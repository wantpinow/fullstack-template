import Link from "next/link";

import { Logo } from "../logo";

export function Topnav({ children }: { children: React.ReactNode }) {
  return (
    <header className="container flex items-center justify-between py-6">
      <Link href="/blog">
        <Logo />
      </Link>
      <div className="flex items-center gap-4">{children}</div>
    </header>
  );
}
