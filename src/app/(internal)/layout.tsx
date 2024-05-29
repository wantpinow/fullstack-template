import { CommandPallete } from "./_components/command-pallete";
import { InternalSidenav } from "./_components/sidenav";
import { InternalTopnav } from "./_components/topnav";

export default function InternalLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <div className="flex">
      <CommandPallete />
      <InternalTopnav className="fixed left-0 top-0 md:hidden" />
      <InternalSidenav className="fixed left-0 top-0 h-screen w-sidenav hidden md:block" />
      <div className="grow md:pl-sidenav md:pt-0 pt-topnav">
        <main className="mx-8 max-w-4xl py-6">{children}</main>
      </div>
    </div>
  );
}
