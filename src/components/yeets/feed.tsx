import { formatDistanceToNow } from "date-fns";
import {
  Pagination,
  PaginationContent,
  PaginationEllipsis,
  PaginationItem,
  PaginationLink,
} from "~/components/ui/pagination";
import type { yeets as yeetsSchema } from "~/server/db/schema";

import { Icon } from "../ui/icon";
import { YeetPublicButton } from "./public-button";

export function YeetsFeed({
  yeets,
  editable = false,
  pagination,
}: {
  yeets: (typeof yeetsSchema.$inferSelect & {
    owner?: { firstName: string };
  })[];
  editable?: boolean;
  pagination?: {
    page: number;
    pageSize: number;
    totalPages: number;
  };
}) {
  if (yeets.length === 0) {
    return (
      <div className="text-center text-muted">
        No yeets found, try adding some! 🚀
      </div>
    );
  }
  return (
    <div className="space-y-8">
      {yeets.map((yeet) => (
        <div key={yeet.id} className="flex gap-4 w-full justify-between">
          <div className="flex gap-4">
            <Icon name={yeet.icon} className="flex-none mt-1" size={24} />
            <div className="space-y-2">
              <div className="text-lg">{yeet.text}</div>
              <div className="text-sm text-muted">
                {formatDistanceToNow(yeet.createdAt)} ago
              </div>
            </div>
          </div>
          {editable && <YeetPublicButton yeet={yeet} />}
          {yeet.owner && (
            <div className="text-base text-primary mt-2">
              {yeet.owner.firstName}
            </div>
          )}
        </div>
      ))}
      {pagination && pagination.totalPages > 1 && (
        <FeedPagination pagination={pagination} className="w-fit ml-auto" />
      )}
    </div>
  );
}

export function FeedPagination({
  className,
  pagination,
}: {
  className?: string;
  pagination: {
    page: number;
    pageSize: number;
    totalPages: number;
  };
}) {
  const prevPageNumber = pagination.page > 1 ? pagination.page - 1 : undefined;
  const nextPageNumber =
    pagination.page < pagination.totalPages ? pagination.page + 1 : undefined;

  return (
    <Pagination className={className}>
      <PaginationContent>
        {prevPageNumber !== undefined && (
          <PaginationItem>
            <PaginationLink href={`?page=${prevPageNumber}`}>
              {prevPageNumber}
            </PaginationLink>
          </PaginationItem>
        )}
        <PaginationItem>
          <PaginationLink href={`?page=${pagination.page}`} isActive>
            {pagination.page}
          </PaginationLink>
        </PaginationItem>
        {nextPageNumber !== undefined && (
          <PaginationItem>
            <PaginationLink href={`?page=${nextPageNumber}`}>
              {nextPageNumber}
            </PaginationLink>
          </PaginationItem>
        )}
        {pagination.page !== pagination.totalPages &&
          nextPageNumber !== pagination.totalPages && (
            <>
              <PaginationItem>
                <PaginationEllipsis />
              </PaginationItem>
              <PaginationItem>
                <PaginationLink href={`?page=${pagination.totalPages}`}>
                  {pagination.totalPages}
                </PaginationLink>
              </PaginationItem>
            </>
          )}
      </PaginationContent>
    </Pagination>
  );
}
