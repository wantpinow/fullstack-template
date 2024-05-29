import { currentUser } from "@clerk/nextjs/server";
import { redirect } from "next/navigation";
import { PageHeader } from "~/components/layout/headers/page-header";
import { YeetsFeed } from "~/components/yeets/feed";
import { NewYeetDialog } from "~/components/yeets/new-yeet";
import { api } from "~/trpc/server";

const PAGE_SIZE = 5;

export default async function HomePage({
  searchParams,
}: {
  searchParams: {
    page?: string;
  };
}) {
  // get the current user
  const user = await currentUser();
  if (!user) {
    return redirect("/sign-in");
  }

  // get their yeets
  const page = parseInt(searchParams.page ?? "1");
  const yeets = await api.yeets.selectPrivateYeets({
    limit: PAGE_SIZE,
    offset: (page - 1) * PAGE_SIZE,
  });

  // get the total number of yeets
  const totalYeets = await api.yeets.selectPrivateYeetsCount();

  return (
    <div>
      <PageHeader
        title={`${user.firstName}'s Yeets`}
        actionButton={<NewYeetDialog />}
      />
      <YeetsFeed
        yeets={yeets}
        editable
        pagination={{
          page,
          pageSize: PAGE_SIZE,
          totalPages: Math.ceil(totalYeets / PAGE_SIZE),
        }}
      />
    </div>
  );
}
