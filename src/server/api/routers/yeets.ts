import { and, count, desc, eq } from "drizzle-orm";
import { z } from "zod";
import {
  createTRPCRouter,
  protectedProcedure,
  publicProcedure,
} from "~/server/api/trpc";
import { iconNames } from "~/server/db/icons";
import { yeets } from "~/server/db/schema";

export const yeetsRouter = createTRPCRouter({
  selectPrivateYeets: protectedProcedure
    .input(
      z.object({
        limit: z.number().max(10).min(1).optional().default(10),
        offset: z.number().min(0).optional().default(0),
      }),
    )
    .query(async ({ input, ctx }) => {
      return ctx.db.query.yeets.findMany({
        where: eq(yeets.userId, ctx.auth.userId),
        orderBy: [desc(yeets.createdAt)],
        limit: input.limit,
        offset: input.offset,
      });
    }),
  selectPrivateYeetsCount: protectedProcedure.query(async ({ ctx }) => {
    const res = await ctx.db
      .select({ count: count() })
      .from(yeets)
      .where(eq(yeets.userId, ctx.auth.userId));
    // @ts-expect-error: count is not in the type
    return res[0].count;
  }),
  selectPublicYeets: publicProcedure
    .input(
      z.object({
        limit: z.number().max(10).min(1).optional().default(10),
        offset: z.number().min(0).optional().default(0),
      }),
    )
    .query(async ({ input, ctx }) => {
      return ctx.db.query.yeets.findMany({
        where: eq(yeets.public, true),
        orderBy: [desc(yeets.createdAt)],
        with: {
          owner: {
            columns: {
              firstName: true,
            },
          },
        },
        limit: input.limit,
        offset: input.offset,
      });
    }),
  selectPublicYeetsCount: publicProcedure.query(async ({ ctx }) => {
    const res = await ctx.db
      .select({ count: count() })
      .from(yeets)
      .where(eq(yeets.public, true));
    // @ts-expect-error: count is not in the type
    return res[0].count;
  }),
  createYeet: protectedProcedure
    .input(
      z.object({
        text: z.string(),
        icon: z.enum(iconNames),
        public: z.boolean().optional(),
      }),
    )
    .mutation(async ({ input, ctx }) => {
      return ctx.db
        .insert(yeets)
        .values({
          userId: ctx.auth.userId,
          text: input.text,
          icon: input.icon,
          public: input.public,
        })
        .returning()
        .execute();
    }),
  setYeetPublic: protectedProcedure
    .input(
      z.object({
        id: z.string(),
        public: z.boolean(),
      }),
    )
    .mutation(async ({ input, ctx }) => {
      return ctx.db
        .update(yeets)
        .set({
          public: input.public,
        })
        .where(and(eq(yeets.id, input.id), eq(yeets.userId, ctx.auth.userId)))
        .returning()
        .execute();
    }),
});
