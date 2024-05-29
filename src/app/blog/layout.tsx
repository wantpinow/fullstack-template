import { BlogTopnav } from "~/app/blog/_components/topnav";

export default function BlogLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <>
      <BlogTopnav />
      <main className="container max-w-[900px] py-6">{children}</main>
    </>
  );
}
