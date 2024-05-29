import Link from "next/link";
import { Button } from "~/components/ui/button";
import { SITE_CONFIG } from "~/lib/config";
import { cn } from "~/lib/utils";

export function SiteFooter({ className }: { className?: string }) {
  return (
    <div className={cn("bg-light border-t py-12", className)}>
      <div className="container flex items-center justify-between">
        <div className="text-muted text-center text-sm">
          {SITE_CONFIG.title}
        </div>
        <div>
          <Button variant="link" asChild>
            <Link href="/privacy-policy">Privacy Policy</Link>
          </Button>
          <Button variant="link" asChild>
            <Link href="/terms-of-service">Terms of Service</Link>
          </Button>
        </div>
      </div>
    </div>
  );
}
