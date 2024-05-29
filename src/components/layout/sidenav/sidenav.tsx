import Link from "next/link";
import { Suspense } from "react";
import { Skeleton } from "~/components/ui/skeleton";
import { cn } from "~/lib/utils";

import { Logo } from "../logo";
import { UserDropdown } from "./user-dropdown";

export function SidenavSkeleton() {
  return (
    <div className="h-10 py-0.5">
      <Skeleton className="h-full bg-secondary" />
    </div>
  );
}

export function SidenavSection({
  children,
  className,
}: {
  children: React.ReactNode;
  className?: string;
}) {
  return <div className={cn("space-y-0.5", className)}>{children}</div>;
}
export function SidenavSectionTitle({ title }: { title: string }) {
  return (
    <div className="group mb-1 flex items-center justify-between px-2 text-muted">
      <div className="text-sm font-semibold">{title}</div>
    </div>
  );
}

export async function Sidenav({
  className,
  children,
}: {
  className?: string;
  children: React.ReactNode[] | React.ReactNode;
}) {
  return (
    <nav className={cn("border-r bg-light", className)}>
      <div className="flex h-full flex-col justify-between px-3 py-4">
        <div className="space-y-8 py-2">
          <SidenavSection className="border-b pb-4">
            <Link href="/home">
              <Logo size="sm" className="px-2" />
            </Link>
          </SidenavSection>
          {children}
        </div>
        <div className="space-y-2">
          <Suspense fallback={<SidenavSkeleton />}>
            <UserDropdown />
          </Suspense>
        </div>
      </div>
    </nav>
  );
}
