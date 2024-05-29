import { SignedIn, SignedOut } from "@clerk/nextjs";
import Link from "next/link";
import { Button } from "~/components/ui/button";
import { SITE_CONFIG } from "~/lib/config";

import { Topnav } from "../../../components/layout/topnav/topnav";

export function LandingTopnav() {
  return (
    <Topnav>
      <>
        <Button variant="link" asChild>
          <Link href="/blog">Blog</Link>
        </Button>
        <Button variant="link" asChild>
          <Link href={SITE_CONFIG.repo} target="_blank">
            GitHub
          </Link>
        </Button>
        <SignedOut>
          <Button variant="secondary" asChild>
            <Link href="/sign-in">Get Started</Link>
          </Button>
        </SignedOut>
        <SignedIn>
          <Button variant="secondary" asChild>
            <Link href="/home">Dashboard</Link>
          </Button>
        </SignedIn>
      </>
    </Topnav>
  );
}
