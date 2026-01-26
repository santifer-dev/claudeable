---
name: claudable-stack
description: Stack de desarrollo web profesional React+Vite+Tailwind+shadcn. Usar cuando el usuario quiera crear páginas web, apps, o componentes UI.
invoke: auto
---

## Stack Obligatorio
- React 18+ con TypeScript
- Vite como bundler
- Tailwind CSS v4 con tw-animate-css
- shadcn/ui (estilo "new-york")
- React Query para data fetching
- Supabase para backend (opcional)

## Sistema de Diseño

NUNCA uses clases directas como `text-white`, `bg-zinc-900`, `text-gray-500`.
SIEMPRE define tokens semánticos en:
- `tailwind.config.ts` (extend colors)
- `src/index.css` (CSS variables HSL)

### Variables CSS Obligatorias

```css
:root {
  --background: 0 0% 100%;
  --foreground: 222.2 84% 4.9%;
  --card: 0 0% 100%;
  --card-foreground: 222.2 84% 4.9%;
  --popover: 0 0% 100%;
  --popover-foreground: 222.2 84% 4.9%;
  --primary: 222.2 47.4% 11.2%;
  --primary-foreground: 210 40% 98%;
  --secondary: 210 40% 96.1%;
  --secondary-foreground: 222.2 47.4% 11.2%;
  --muted: 210 40% 96.1%;
  --muted-foreground: 215.4 16.3% 46.9%;
  --accent: 210 40% 96.1%;
  --accent-foreground: 222.2 47.4% 11.2%;
  --destructive: 0 84.2% 60.2%;
  --destructive-foreground: 210 40% 98%;
  --border: 214.3 31.8% 91.4%;
  --input: 214.3 31.8% 91.4%;
  --ring: 222.2 84% 4.9%;
  --radius: 0.5rem;
}

.dark {
  --background: 222.2 84% 4.9%;
  --foreground: 210 40% 98%;
  /* ... resto de variables dark */
}
```

### Uso en Tailwind

```tsx
// CORRECTO - usando tokens semánticos
<div className="bg-background text-foreground">
  <button className="bg-primary text-primary-foreground">
    Click me
  </button>
</div>

// INCORRECTO - clases directas
<div className="bg-white text-gray-900">
  <button className="bg-blue-500 text-white">
    Click me
  </button>
</div>
```

## Estructura de Proyecto

```
src/
├── components/
│   └── ui/          # shadcn components (Button, Card, etc.)
├── components/      # custom components del proyecto
├── lib/
│   └── utils.ts     # cn() helper
├── hooks/           # custom hooks
├── pages/           # páginas/rutas
└── index.css        # variables CSS y estilos base
```

## Reglas de Código

1. **Componentes pequeños y reutilizables** - Un componente por archivo
2. **Usar cn() para clases condicionales** - Nunca concatenación manual de strings
3. **Props tipadas con TypeScript** - Interfaces explícitas
4. **Accesibilidad** - Usar Radix primitives de shadcn
5. **Imports absolutos** - Configurar `@/` como alias de `src/`

## Helper cn()

```typescript
// src/lib/utils.ts
import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}
```

## Componentes shadcn Base

Siempre instalar estos componentes como base:
- Button
- Card
- Input
- Label
- Separator
- Sheet (para mobile nav)
- Skeleton (para loading states)

```bash
npx shadcn@latest add button card input label separator sheet skeleton
```

## Animaciones

- **Simples:** CSS only con Tailwind (`animate-*`, `transition-*`)
- **Complejas:** Motion (framer-motion)
- **Scroll:** tw-animate-css para reveals en scroll

```bash
npm install tw-animate-css motion
```
