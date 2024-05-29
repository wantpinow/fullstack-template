"use client";

import { SmilePlus } from "lucide-react";
import { useState } from "react";
import {
  Tooltip,
  TooltipContent,
  TooltipProvider,
  TooltipTrigger,
} from "~/components/ui/tooltip";
import { cn } from "~/lib/utils";
import { IconName, iconNames } from "~/server/db/icons";

import { Button } from "./button";
import { FormControl } from "./form";
import { Icon } from "./icon";
import { Input } from "./input";
import { Popover, PopoverContent, PopoverTrigger } from "./popover";

export function IconSelect({
  value,
  setValue,
}: {
  value?: IconName;
  setValue: (iconName: IconName) => void;
}) {
  const [open, setOpen] = useState(false);
  const [inputValue, setInputValue] = useState("");
  const filteredIconNames = iconNames.filter((iconName) =>
    iconName
      .split(/(?=[A-Z])/)
      .join(" ")
      .toLowerCase()
      .includes(inputValue.toLowerCase()),
  );
  return (
    <Popover open={open} onOpenChange={setOpen}>
      <PopoverTrigger asChild>
        <FormControl>
          <Button
            variant={"outline"}
            className={cn(
              "pl-3 text-left font-normal",
              value === undefined && "text-muted-foreground",
            )}
          >
            {value !== undefined ? (
              <span>
                <Icon name={value} size={16} className="mr-2 inline-block" />
                {value.split(/(?=[A-Z])/).join(" ")}
              </span>
            ) : (
              <span>Pick an icon</span>
            )}
            <SmilePlus className="ml-auto h-4 w-4 opacity-50" />
          </Button>
        </FormControl>
      </PopoverTrigger>
      <PopoverContent
        className="max-h-[300px] w-[300px] overflow-auto p-4"
        align="end"
      >
        <Input
          value={inputValue}
          onChange={(e) => setInputValue(e.target.value)}
          placeholder="Search..."
          className="mb-2 focus-visible:ring-0"
        />
        <div className="grid grid-cols-6">
          <TooltipProvider>
            {filteredIconNames.map((iconName) => (
              <Tooltip key={iconName}>
                <TooltipTrigger asChild>
                  <Button
                    variant={value === iconName ? "default" : "ghost"}
                    className="w-full rounded-sm text-left"
                    onClick={() => {
                      setValue(iconName);
                      setOpen(false);
                    }}
                    size="icon"
                  >
                    <Icon name={iconName} size={20} />
                  </Button>
                </TooltipTrigger>
                <TooltipContent>
                  <p>{iconName.split(/(?=[A-Z])/).join(" ")}</p>
                </TooltipContent>
              </Tooltip>
            ))}
          </TooltipProvider>
        </div>
        {filteredIconNames.length === 0 && (
          <p className="mt-2 text-center text-sm text-muted-foreground">
            No icons found.
          </p>
        )}
      </PopoverContent>
    </Popover>
  );
}
