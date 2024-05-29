import { currentUser } from "@clerk/nextjs/server";
import { MenuIcon } from "lucide-react";
import Image from "next/image";
import { Logo } from "~/components/layout/logo";
import { SidenavButtonLink } from "~/components/layout/sidenav/section-link";
import { ThemeToggleButton } from "~/components/theme/theme-toggle";
import { Button } from "~/components/ui/button";
import {
  Sheet,
  SheetContent,
  SheetFooter,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "~/components/ui/sheet";
import { SITE_CONFIG } from "~/lib/config";
import { cn } from "~/lib/utils";

export function InternalTopnav({ className }: { className?: string }) {
  return (
    <div
      className={cn(
        "w-full h-topnav border-b bg-light flex justify-between items-center container",
        className,
      )}
    >
      <Logo size="sm" />
      <TopnavSheet />
    </div>
  );
}

export async function TopnavSheet() {
  const user = await currentUser();
  if (user === null) {
    return null;
  }
  return (
    <Sheet>
      <SheetTrigger asChild>
        <Button variant="outline" size="icon">
          <MenuIcon />
        </Button>
      </SheetTrigger>
      <SheetContent side="top">
        <SheetHeader>
          <SheetTitle>{SITE_CONFIG.title}</SheetTitle>
        </SheetHeader>
        <div className="border-y space-y-2 my-2 py-2">
          <SidenavButtonLink iconName="User" label="My Yeets" href="/home" />
          <SidenavButtonLink
            iconName="Globe"
            label="All Yeets"
            href="/public"
          />
          <ThemeToggleButton className="w-full justify-start px-2" />
        </div>
        <SheetFooter className="">
          <Button
            className="flex h-fit w-full items-center justify-start gap-3 px-2 py-1.5"
            variant="ghost"
          >
            <Image
              src={user.imageUrl}
              alt={`${user.firstName} ${user.lastName}'s profile picture`}
              width={34}
              height={34}
              className="rounded-full"
            />
            <span className="font-normal tracking-wide">
              {user.firstName} {user.lastName}
            </span>
          </Button>
        </SheetFooter>
      </SheetContent>
    </Sheet>
  );
}
