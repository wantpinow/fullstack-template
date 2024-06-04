import { relations, sql } from "drizzle-orm";
import {
  boolean,
  pgEnum,
  pgTableCreator,
  timestamp,
  uuid,
  varchar,
} from "drizzle-orm/pg-core";
import { SITE_CONFIG } from "~/lib/config";

import { iconNames } from "./icons";

// multi-project schema
export const createTable = pgTableCreator(
  (name) => `${SITE_CONFIG.pg_table_prefix}_${name}`,
);

// icon type
export const iconEnum = pgEnum("icon", iconNames);

// users table (synced with Clerk via webhooks)
export const users = createTable("user", {
  id: varchar("id", { length: 256 }).primaryKey(),
  email: varchar("email", { length: 256 }).notNull(),
  firstName: varchar("first_name", { length: 256 }).notNull(),
  lastName: varchar("last_name", { length: 256 }).notNull(),
  createdAt: timestamp("created_at")
    .default(sql`CURRENT_TIMESTAMP`)
    .notNull(),
  updatedAt: timestamp("updated_at")
    .default(sql`CURRENT_TIMESTAMP`)
    .notNull(),
});

export const usersRelations = relations(users, ({ many }) => ({
  yeets: many(yeets),
}));

// yeets table
export const yeets = createTable("yeet", {
  id: uuid("id").defaultRandom().primaryKey(),
  userId: varchar("user_id")
    .references(() => users.id, { onDelete: "cascade", onUpdate: "cascade" })
    .notNull(),
  text: varchar("text", { length: 256 }).notNull(),
  icon: iconEnum("icon").notNull(),
  public: boolean("public").default(false).notNull(),
  createdAt: timestamp("created_at")
    .default(sql`CURRENT_TIMESTAMP`)
    .notNull(),
  updatedAt: timestamp("updated_at")
    .default(sql`CURRENT_TIMESTAMP`)
    .notNull(),
});

export const yeetsRelations = relations(yeets, ({ one }) => ({
  owner: one(users, {
    fields: [yeets.userId],
    references: [users.id],
  }),
}));
