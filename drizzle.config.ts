import type { Config } from "drizzle-kit";

export default {
  dialect: "postgresql",
  schema: "./src/db/schema/index.ts",
  out: "./drizzle",
} satisfies Config;