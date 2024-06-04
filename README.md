# fullstack_template

## Setup

### Clone and Deploy

To get started, clone the repository and create a new project in Vercel. We've turned off Vercel's auto-build feature, so this won't do anything yet, but it will give us a URL to use in the next steps.

### Rename "fullstack_template" References

In your cloned project, replace all instances of `fullstack_template` with your project name. This shouldn't (🤞) break anything.

### Setup Integrations and Secrets

Copy the `.env.local.example` file to `.env.local` and fill in the values. This will involve setting up Clerk and Neon projects.

#### Clerk Setup

Create a new project in Clerk. Once that's done, do the following:

- [ ] Add the development secret and publishable keys to your `.env.local` file.
- [ ] Restrict the providers to `email` only. You can add more social providers later, but for now, we're just using email.
- [ ] Make sure that the `personal_information -> name` option is set and required for all users.
- [ ] Set up a webhook to sync Clerk with your database. You should use the following parameters when setting the webhook:
  - URL: `{YOUR_VERCEL_URL}/api/clerk-auth/sync`
  - Events: `user.deleted`, `user.created`, `user.updated`
- [ ] Add the webhook signing secret to your `.env.local` file.
      For now, we won't create a separate production instance as that requires a custom domain. You can do that later.

#### Neon Setup

Create a new project in Neon. Then, do the following:

- [ ] Add the Neon project ID to your `.env.local` file.
- [ ] Generate a Neon API key and add it to your `.env.local` file.

#### Vercel Setup

You need a Vercel access token to build and deploy via CI/CD. Generate one and add it to the `.env.local` file for now.

### Add Secrets to GitHub

Now that your `.env.local` file is set up, you need to add the secrets to GitHub. Follow the instructions in `.env.local.example` to see which secrets you need to add. Note that some secrets should be suffixed with \_PREVIEW / \_PRODUCTION to indicate which environment they're for.

### Deploy

With all the secrets set up, you can now deploy your project to Vercel. Create an empty commit and push it to your repository. This should trigger a build and deploy to Vercel.

### Create Your First User

To make sure that everything's working, create an account on your production deployment. Once you've logged in you should be able to use the application.

### Run Locally

Install the dependencies:

```bash
bun install
```

Update the `users` part of `src/server/db/seed.ts` with the account that you created in `Clerk`. Then run a local postgres server (with Docker running):

```bash
bun run db:reset
```

Start the server:

```bash
bun dev
```
