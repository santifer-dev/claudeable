import { Button } from "@/components/ui/button"

function App() {
  return (
    <div className="min-h-screen bg-background">
      {/* Hero Section */}
      <section className="relative flex min-h-screen flex-col items-center justify-center px-6">
        {/* Background gradient */}
        <div className="pointer-events-none absolute inset-0 bg-[radial-gradient(ellipse_at_center,hsl(var(--primary)/0.1)_0%,transparent_70%)]" />

        <div className="relative z-10 max-w-3xl text-center">
          <h1 className="text-[clamp(2.5rem,8vw,5rem)] font-bold leading-[1.1] tracking-tight text-foreground">
            Tu proyecto
            <br />
            <span className="text-primary">empieza aquí</span>
          </h1>

          <p className="mx-auto mt-6 max-w-xl text-lg text-muted-foreground">
            Este es un template base de Claudable con React, Vite, Tailwind CSS
            y shadcn/ui. Personaliza los colores y tipografías en{" "}
            <code className="rounded bg-muted px-1.5 py-0.5 text-sm">
              src/index.css
            </code>
          </p>

          <div className="mt-10 flex flex-wrap items-center justify-center gap-4">
            <Button size="lg">Empezar</Button>
            <Button variant="outline" size="lg">
              Ver documentación
            </Button>
          </div>
        </div>
      </section>
    </div>
  )
}

export default App
