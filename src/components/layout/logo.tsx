import { ShapesIcon } from "lucide-react";
import { SITE_CONFIG } from "~/lib/config";
import { cn } from "~/lib/utils";

export function Logo({
  className,
  size = "lg",
}: {
  className?: string;
  size?: "sm" | "lg";
}) {
  return (
    <div
      className={cn(
        size === "lg" && "text-xl font-light tracking-widest",
        size === "sm" && "text-base font-normal tracking-wide",
        className,
      )}
    >
      <ShapesIcon className="mr-2.5 inline-block stroke-[1.5px]" />
      {SITE_CONFIG.title}
    </div>
  );
}
