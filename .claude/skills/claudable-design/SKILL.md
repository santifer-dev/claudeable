---
name: claudable-design
description: Directrices de diseño visual para crear interfaces distintivas y profesionales. Usar cuando necesites mejorar la estética de componentes o páginas.
invoke: auto
---

## Principios de Diseño Distintivo

### 1. Tipografía con Personalidad

**EVITAR:** Inter, Arial, Roboto, Helvetica, system fonts
**PREFERIR:** Fuentes con carácter que refuercen la marca

| Tipo | Opciones recomendadas |
|------|----------------------|
| **Display/Headlines** | Clash Display, Cabinet Grotesk, Satoshi, Space Grotesk, Outfit |
| **Body refinado** | DM Sans, Plus Jakarta Sans, Manrope, Nunito Sans |
| **Serif elegante** | Playfair Display, Fraunces, Libre Baskerville |
| **Monospace moderno** | JetBrains Mono, Fira Code, IBM Plex Mono |

```css
/* Ejemplo de configuración */
@import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@400;500;600;700&family=DM+Sans:wght@400;500;600&display=swap');

:root {
  --font-display: 'Space Grotesk', sans-serif;
  --font-body: 'DM Sans', sans-serif;
}
```

### 2. Colores con Impacto

No uses paletas tímidas. Define:
- **Un color dominante** que identifique la marca
- **Un acento contrastante** para CTAs y highlights
- **Neutrales con personalidad** (no grises puros)

```css
/* Ejemplo: Paleta con personalidad */
:root {
  --primary: 262 83% 58%;      /* Violeta vibrante */
  --accent: 43 96% 56%;        /* Amarillo dorado */
  --background: 240 10% 3.9%;  /* Negro con tinte azul */
  --foreground: 0 0% 98%;      /* Blanco cálido */
  --muted: 240 5% 15%;         /* Gris con personalidad */
}
```

### 3. Composición Espacial Audaz

- **Asimetría intencional** - No todo centrado
- **Escala dramática** - Headlines XXL, contrastes de tamaño
- **Espacio negativo** - Deja respirar el diseño
- **Romper la grilla** - Elementos que sobresalen

```tsx
// Ejemplo de composición audaz
<section className="relative min-h-screen">
  <h1 className="text-[clamp(3rem,10vw,8rem)] font-bold leading-none">
    Diseño que<br />
    <span className="text-accent">impacta</span>
  </h1>
  <p className="absolute bottom-12 right-12 max-w-xs text-muted-foreground">
    Pequeño texto contrastando con el headline masivo
  </p>
</section>
```

### 4. Animaciones de Impacto

**En carga inicial:**
- Reveals escalonados (stagger)
- Fade + slide desde direcciones diferentes
- Clip-path reveals

**En interacción:**
- Hover states con movimiento
- Transiciones suaves (300-500ms)
- Micro-interacciones en botones

```tsx
// Ejemplo con Motion
import { motion } from "motion/react"

<motion.div
  initial={{ opacity: 0, y: 20 }}
  animate={{ opacity: 1, y: 0 }}
  transition={{ duration: 0.6, ease: "easeOut" }}
>
  Contenido animado
</motion.div>
```

### 5. Fondos Atmosféricos

No uses fondos planos. Añade:
- **Gradients sutiles** - Mesh gradients, radiales
- **Noise/grain** - Textura sutil
- **Blobs/shapes** - Formas abstractas de fondo
- **Grid lines** - Líneas estructurales decorativas

```css
/* Gradient mesh con noise */
.hero-bg {
  background:
    radial-gradient(ellipse at 20% 50%, hsl(var(--primary) / 0.15) 0%, transparent 50%),
    radial-gradient(ellipse at 80% 80%, hsl(var(--accent) / 0.1) 0%, transparent 50%),
    hsl(var(--background));
}

/* Añadir noise con pseudo-elemento */
.hero-bg::before {
  content: '';
  position: absolute;
  inset: 0;
  background: url('/noise.svg');
  opacity: 0.03;
  pointer-events: none;
}
```

### 6. Detalles que Elevan

- **Bordes sutiles** - `border border-border/50`
- **Sombras con color** - No negro puro
- **Glassmorphism selectivo** - Solo donde tenga sentido
- **Iconografía consistente** - Lucide icons

```tsx
// Card con detalles premium
<div className="relative rounded-2xl border border-border/50 bg-card/50 backdrop-blur-sm p-8 shadow-xl shadow-primary/5">
  {/* Highlight sutil en el borde superior */}
  <div className="absolute inset-x-0 top-0 h-px bg-gradient-to-r from-transparent via-primary/50 to-transparent" />

  {/* Contenido */}
</div>
```

## Anti-Patterns a Evitar

1. **Diseño genérico** - Si parece un template, es malo
2. **Colores apagados** - No tengas miedo del color
3. **Todo centrado** - Usa alineaciones variadas
4. **Espaciado uniforme** - Varía para crear ritmo
5. **Tipografía monótona** - Mezcla pesos y tamaños
6. **Fondos planos** - Siempre añade algo de textura
7. **Animaciones idénticas** - Varía timing y dirección
