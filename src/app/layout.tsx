import { Inter } from "next/font/google";
import { ClerkProvider } from "~/components/auth/clerk-provider";
import { ThemeProvider } from "~/components/theme/provider";
import { Toaster } from "~/components/ui/sonner";
import { SITE_CONFIG } from "~/lib/config";
import { cn } from "~/lib/utils";
import "~/styles/globals.css";
import { TRPCReactProvider } from "~/trpc/react";

const inter = Inter({
  subsets: ["latin"],
  variable: "--font-sans",
});

export const metadata = {
  title: SITE_CONFIG.title,
  description: SITE_CONFIG.description,
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" suppressHydrationWarning>
      <body className={cn(inter.className, "antialiased")}>
        <TRPCReactProvider>
          <ThemeProvider
            attribute="class"
            defaultTheme="dark"
            enableSystem
            disableTransitionOnChange
          >
            <ClerkProvider>
              <Toaster />
              {children}
            </ClerkProvider>
          </ThemeProvider>
        </TRPCReactProvider>
      </body>
    </html>
  );
}
