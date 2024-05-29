import Link from "next/link";
import { Button } from "~/components/ui/button";
import { SITE_CONFIG } from "~/lib/config";

import { Topnav } from "../../../components/layout/topnav/topnav";

export function BlogTopnav() {
  return (
    <Topnav>
      <>
        <Button variant="link" asChild>
          <Link href={SITE_CONFIG.repo} target="_blank">
            GitHub
          </Link>
        </Button>
        <Button variant="default" asChild>
          <Link href="/">Home</Link>
        </Button>
      </>
    </Topnav>
  );
}
