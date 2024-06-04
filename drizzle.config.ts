import { type Config } from "drizzle-kit";
import { env } from "~/env";
import { SITE_CONFIG } from "~/lib/config";

export default {
  schema: "./src/server/db/schema.ts",
  out: "./drizzle",
  dialect: "postgresql",
  dbCredentials: {
    url: env.DATABASE_URL,
  },
  tablesFilter: [`${SITE_CONFIG.pg_table_prefix}_*`],
} satisfies Config;
