import { PageHeader } from "~/components/layout/headers/page-header";
import { YeetsFeed } from "~/components/yeets/feed";
import { api } from "~/trpc/server";

const PAGE_SIZE = 5;

export default async function PublicPage({
  searchParams,
}: {
  searchParams: {
    page: string;
  };
}) {
  const page = parseInt(searchParams.page ?? "1");
  const yeets = await api.yeets.selectPublicYeets({
    limit: PAGE_SIZE,
    offset: (page - 1) * PAGE_SIZE,
  });
  const totalYeets = await api.yeets.selectPublicYeetsCount();
  return (
    <div>
      <PageHeader title="Public Yeeterboard" />
      <YeetsFeed
        yeets={yeets}
        pagination={{
          page,
          pageSize: PAGE_SIZE,
          totalPages: Math.ceil(totalYeets / PAGE_SIZE),
        }}
      />
    </div>
  );
}
