"use client";

import { useRouter } from "next/navigation";
import { toast } from "sonner";
import type { yeets } from "~/server/db/schema";
import { api } from "~/trpc/react";

import { Label } from "../ui/label";
import { Switch } from "../ui/switch";

export function YeetPublicButton({
  yeet,
}: {
  yeet: typeof yeets.$inferSelect;
}) {
  const router = useRouter();
  const updateYeet = api.yeets.setYeetPublic.useMutation({
    onSuccess: () => {
      toast.success("Yeet updated");
      router.refresh();
    },
    onError: () => {
      toast.error("Failed to update Yeet");
    },
  });

  return (
    <div className="flex items-center gap-2">
      <Switch
        checked={yeet.public}
        onCheckedChange={(checked) =>
          updateYeet.mutate({
            id: yeet.id,
            public: checked,
          })
        }
      />
      <Label htmlFor="public">Public</Label>
    </div>
  );
}
