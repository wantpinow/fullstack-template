"use client";

import { ClerkProvider as ClerkProviderBase } from "@clerk/nextjs";
import { dark } from "@clerk/themes";
import { useTheme } from "next-themes";
import { type NextClerkProviderProps } from "node_modules/@clerk/nextjs/dist/types/types";

export function ClerkProvider({ children, ...props }: NextClerkProviderProps) {
  const { theme } = useTheme();
  return (
    <ClerkProviderBase
      afterSignOutUrl="/"
      signInFallbackRedirectUrl="/home"
      signUpFallbackRedirectUrl="/home"
      appearance={{
        baseTheme: theme === "dark" ? dark : undefined,
      }}
      {...props}
    >
      {children}
    </ClerkProviderBase>
  );
}
