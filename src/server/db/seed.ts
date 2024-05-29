import { db } from "~/server/db";
import { users, yeets } from "~/server/db/schema";

export const seed = async () => {
  console.log("Seeding...");
  console.time("DB has been seeded!");

  // database teardown
  await db.delete(yeets);
  await db.delete(users);

  // seed user
  // todo: add correct user ID
  const [user] = await db
    .insert(users)
    .values([
      {
        id: "user_2h9Ns7sxxctIVP2bVIGEci3Dt6h",
        email: "patrick@frenett.net",
        firstName: "Patrick",
        lastName: "Frenett",
      },
    ])
    .returning();
  if (user === undefined) {
    throw new Error("Failed to seed user");
  }

  // seed yeets
  await db
    .insert(yeets)
    .values([
      {
        userId: user.id,
        text: "Hello, world!",
        icon: "Waves",
      },
    ])
    .execute();

  console.timeEnd("DB has been seeded!");
};

try {
  await seed();
  process.exit(0);
} catch (e) {
  console.error(e);
  process.exit(1);
}
