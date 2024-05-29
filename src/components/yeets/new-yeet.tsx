"use client";

import { zodResolver } from "@hookform/resolvers/zod";
import { useRouter } from "next/navigation";
import { useState } from "react";
import { useForm } from "react-hook-form";
import { toast } from "sonner";
import { z } from "zod";
import { cn } from "~/lib/utils";
import { iconNames } from "~/server/db/icons";
import { api } from "~/trpc/react";

import { Button } from "../ui/button";
import { Dialog, DialogContent, DialogTrigger } from "../ui/dialog";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "../ui/form";
import { IconSelect } from "../ui/icon-select";
import { Input } from "../ui/input";
import { Switch } from "../ui/switch";

const formSchema = z.object({
  text: z.string().min(1),
  public: z.boolean().optional(),
  icon: z.enum(iconNames),
});

export function NewYeetForm({ onYeet }: { onYeet?: () => void }) {
  const router = useRouter();
  const [loading, setLoading] = useState(false);

  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      text: "",
      public: true,
    },
  });
  const submitYeet = api.yeets.createYeet.useMutation({
    onMutate: () => setLoading(true),
    onSuccess: ([yeet]) => {
      if (yeet === undefined) return;
      toast.success("Yeet successfully Yeeted");
      router.refresh();
      onYeet?.();
    },
    onError: (error) => {
      console.error(error);
      toast.error("Failed to Yeet");
      setLoading(false);
    },
  });

  async function onFormSubmit(values: z.infer<typeof formSchema>) {
    submitYeet.mutate({ ...values });
  }

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onFormSubmit)} className="space-y-4">
        <div className="text-lg font-bold">What&apos;s on your mind?</div>
        <FormField
          control={form.control}
          name="text"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Yeet</FormLabel>
              <FormControl>
                <Input placeholder="Start typing here..." {...field} />
              </FormControl>
              <FormMessage />
            </FormItem>
          )}
        />
        <FormField
          control={form.control}
          name="icon"
          render={({ field }) => (
            <FormItem className="flex flex-col">
              <FormLabel>Icon</FormLabel>
              <IconSelect
                value={field.value}
                setValue={(value) => form.setValue("icon", value)}
              />
              <FormMessage />
            </FormItem>
          )}
        />
        <div className="flex justify-between items-center">
          <FormField
            control={form.control}
            name="public"
            render={({ field }) => (
              <FormItem>
                <FormControl>
                  <div className="flex items-center gap-2">
                    <Switch
                      checked={field.value}
                      onCheckedChange={field.onChange}
                    />
                    <FormLabel htmlFor="public">Public</FormLabel>
                  </div>
                </FormControl>
                <FormMessage />
              </FormItem>
            )}
          />
          <Button
            type="submit"
            className={cn("ml-auto block", loading && "animate-pulse")}
            disabled={loading}
          >
            {loading ? "Sending..." : "Send Yeet"}
          </Button>
        </div>
      </form>
    </Form>
  );
}

export function NewYeetDialog() {
  const [open, setOpen] = useState(false);
  return (
    <Dialog open={open} onOpenChange={setOpen}>
      <DialogTrigger asChild>
        <Button>New Yeet</Button>
      </DialogTrigger>
      <DialogContent>
        <NewYeetForm onYeet={() => setOpen(false)} />
      </DialogContent>
    </Dialog>
  );
}
