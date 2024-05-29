import { ShapesIcon } from "lucide-react";
import { SITE_CONFIG } from "~/lib/config";

export default async function Home() {
  return (
    <div className="relative mx-auto max-w-xl">
      <ShapesIcon className="absolute left-0 top-0 size-64 stroke-[1.5px] text-primary opacity-10" />
      <div className="min-h-[300px] backdrop-blur-sm">
        <h1 className="mt-16 text-center text-5xl font-bold">
          <span className="opacity-50">Welcome to </span>{" "}
          <span className="text-primary">{SITE_CONFIG.title}</span>
        </h1>
        <p className="mt-4 text-center">A full thing</p>
      </div>
    </div>
  );
}
