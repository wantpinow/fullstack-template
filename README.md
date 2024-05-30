- replace all fullstack_template references with your project name

### Setting up Clerk

- [ ] Sign up for a Clerk account
- [ ] Create a new project. This project is set up for the `email` provider only. Make sure that the `personal_information -> name` option is set and required for all users. You can (and should) add more providers, just make sure that they have the name field set and required.
- [ ] Add development NEXT_PUBLIC_CLERK_PUBLISHABLE_KEY and CLERK_SECRET_KEY to `.env`
- [ ] Create a production Clerk instance

### Running Locally

Make sure you have Docker installed and running on your machine, then run the following command to start the database:

```
vercel link --yes
vercel env pull .env.local --yes --environment=development
```

```bash
bun run db:reset
```

```
bun dev
```

Create a user in the dev environment.

### Seeding Locally

Get your user details from Clerk and add them to `src/server/db/seed.ts`. You should now be able to add yeets locally.

### Set up Neon

- [ ] Sign up for a Neon account
- [ ] Create a new project

### Setting up GH Action, Deploying to Vercel

### Syncing Clerk with your database

```
https://{{YOUR_PROJECT}}.vercel.app/api/clerk-auth/sync
```

Subscribe to the following events:

```
user.deleted
user.created
user.updated
```

Get the signing secret from Clerk and add it to the GH secrets
