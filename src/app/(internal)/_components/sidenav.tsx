import { SidenavButtonLink } from "~/components/layout/sidenav/section-link";
import {
  Sidenav,
  SidenavSection,
  SidenavSectionTitle,
} from "~/components/layout/sidenav/sidenav";

export function InternalSidenav({ className }: { className?: string }) {
  return (
    <Sidenav className={className}>
      <SidenavSection>
        <SidenavSectionTitle title="Yeeter" />
        <SidenavButtonLink iconName="User" label="My Yeets" href="/home" />
        <SidenavButtonLink iconName="Globe" label="All Yeets" href="/public" />
      </SidenavSection>
    </Sidenav>
  );
}
