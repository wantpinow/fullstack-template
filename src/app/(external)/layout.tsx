import { LandingTopnav } from "~/app/(external)/_components/topnav";
import { SiteFooter } from "~/components/layout/footer";

export default function ExternalLayout({
  children,
}: {
  children?: React.ReactNode;
}) {
  return (
    <>
      <LandingTopnav />
      <main className="container min-h-screen">{children}</main>
      <SiteFooter />
    </>
  );
}
