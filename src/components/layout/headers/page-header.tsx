import { cn } from "~/lib/utils";

export function PageHeader({
  title,
  actionButton,
  className,
}: {
  title: string;
  actionButton?: React.ReactNode;
  className?: string;
}) {
  return (
    <div className={cn("mb-8 border-b pb-4", className)}>
      <div className="flex text-4xl font-bold justify-between w-full items-top">
        {title}
        {actionButton}
      </div>
    </div>
  );
}
