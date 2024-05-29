"use client";

import { MoonIcon, SunIcon } from "lucide-react";
import { useTheme } from "next-themes";
import * as React from "react";
import { DropdownMenuItem } from "~/components/ui/dropdown-menu";

import { Button } from "../ui/button";

export function ThemeToggle({}) {
  const { setTheme, theme } = useTheme();

  const toggleTheme = () => {
    setTimeout(() => {
      setTheme(theme === "dark" ? "light" : "dark");
    }, 200);
  };

  return (
    <DropdownMenuItem onClick={toggleTheme} className="cursor-pointer">
      {theme === "light" ? (
        <>
          <SunIcon className="mr-2.5 inline-block stroke-[1.3px]" />
          Light Mode
        </>
      ) : (
        <>
          <MoonIcon className="mr-2.5 inline-block stroke-[1.3px]" />
          Dark Mode
        </>
      )}
    </DropdownMenuItem>
  );
}

export function ThemeToggleButton({ className }: { className?: string }) {
  const { setTheme, theme } = useTheme();

  const toggleTheme = () => {
    setTimeout(() => {
      setTheme(theme === "dark" ? "light" : "dark");
    }, 200);
  };

  return (
    <Button onClick={toggleTheme} className={className} variant="ghost">
      {theme === "light" ? (
        <>
          <SunIcon className="mr-2.5 inline-block stroke-[1.3px]" />
          Light Mode
        </>
      ) : (
        <>
          <MoonIcon className="mr-2.5 inline-block stroke-[1.3px]" />
          Dark Mode
        </>
      )}
    </Button>
  );
}
