---
name: claudable-workflow
description: Workflow paso a paso para desarrollo web profesional. Usar cuando inicies un nuevo proyecto web o landing page.
---

## Workflow de Desarrollo Web

### Fase 1: Descubrimiento

Antes de escribir código, responde estas preguntas:

1. **Propósito:** ¿Qué hace este sitio/app?
2. **Audiencia:** ¿Quién lo va a usar?
3. **Acciones clave:** ¿Qué queremos que haga el usuario?
4. **Contenido:** ¿Qué secciones necesitamos?
5. **Referencias:** ¿Hay sitios similares que te gusten?

### Fase 2: Dirección Estética

Elige UNA dirección principal:

| Estilo | Características | Mejor para |
|--------|-----------------|------------|
| **Minimalist** | Espacio blanco, tipografía limpia, pocos colores | SaaS, portfolios |
| **Brutalist** | Crudo, tipografía bold, contrastes fuertes | Agencias, creativos |
| **Luxury** | Serif elegante, animaciones suaves, dark mode | Moda, premium |
| **Playful** | Colores vibrantes, ilustraciones, micro-interacciones | Apps consumer, startups |
| **Editorial** | Grid definido, jerarquía clara, como revista | Blogs, medios |
| **Retro-futuristic** | Gradients, glassmorphism, neon | Tech, gaming |

### Fase 3: Setup del Proyecto

```bash
# 1. Crear proyecto
npm create vite@latest mi-proyecto -- --template react-ts
cd mi-proyecto

# 2. Instalar Tailwind CSS v4
npm install tailwindcss @tailwindcss/vite

# 3. Configurar Vite
# Añadir @tailwindcss/vite a vite.config.ts

# 4. Instalar shadcn
npx shadcn@latest init

# 5. Instalar componentes base
npx shadcn@latest add button card input

# 6. Instalar utilidades
npm install clsx tailwind-merge tw-animate-css
```

### Fase 4: Sistema de Diseño

1. **Definir paleta de colores** en CSS variables
2. **Elegir tipografías** (evitar Inter, Arial, Roboto)
3. **Configurar espaciado** consistente
4. **Crear componentes base** personalizados

### Fase 5: Desarrollo

Orden recomendado:

1. **Layout global** - Header, Footer, estructura base
2. **Navegación** - Menú principal, mobile nav
3. **Hero section** - Primera impresión
4. **Secciones de contenido** - Una por una
5. **CTAs y formularios** - Conversión
6. **Estados** - Loading, error, empty states
7. **Animaciones** - Polish final

### Fase 6: Testing Visual

```
# Usar Playwright MCP para screenshots
"Toma un screenshot de la página actual"
"Muéstrame cómo se ve en móvil"
```

### Fase 7: Deploy

```bash
# Build de producción
npm run build

# Deploy a Vercel (con MCP)
"Despliega a Vercel"

# O manualmente
npx vercel
```

## Checklist Pre-Launch

- [ ] Responsive en mobile, tablet, desktop
- [ ] Favicon y meta tags
- [ ] Open Graph images
- [ ] Loading states
- [ ] 404 page
- [ ] Performance (Lighthouse > 90)
- [ ] Accesibilidad básica (contraste, alt texts)
