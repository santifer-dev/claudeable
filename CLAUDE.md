# Claudable - Metaproyecto para Desarrollo Web Profesional

Este es un metaproyecto de Claude Code configurado para crear páginas web profesionales al nivel de Lovable.

## Qué es esto

NO es una web, es una "caja de herramientas". Cuando abras Claude Code en este directorio, tienes todo configurado para crear webs profesionales.

## Skills Disponibles

### Plugin Oficial (Anthropic)
- `/frontend-design` - Crear interfaces distintivas y de alta calidad (plugin oficial)

### Skills Locales
- `/claudable-stack` - Stack técnico y sistema de diseño
- `/claudable-workflow` - Workflow paso a paso para proyectos nuevos
- `/claudable-design` - Directrices de diseño visual (complementa frontend-design)

## MCPs Configurados

- **Nanobanana** - Generación de imágenes con Gemini
- **Figma** - Diseño a código pixel-perfect
- **Playwright** - Screenshots y testing visual
- **Supabase** - Backend (DB, auth, storage)

## Stack Default

- React 18 + TypeScript
- Vite
- Tailwind CSS v4
- shadcn/ui (estilo "new-york")
- Motion para animaciones

## Reglas Críticas

### Sistema de Diseño
```
NUNCA uses clases de color directas (text-white, bg-zinc-900)
SIEMPRE usa tokens semánticos (bg-background, text-foreground, bg-primary)
```

### Tipografía
```
EVITAR: Inter, Arial, Roboto, Helvetica, system fonts
PREFERIR: Fuentes con personalidad (Space Grotesk, DM Sans, Clash Display)
```

### Respuestas
```
Mantén respuestas concisas
No expliques lo que vas a hacer, solo hazlo
```

## Cómo Usar

### Nuevo Proyecto

**Opción A - Con script:**
```bash
./new-project.sh mi-landing ~/projects
cd ~/projects/mi-landing
npm install && npm run dev
```

**Opción B - Desde cero (Claude lo crea):**
Simplemente pide "crea una landing page para X en ~/projects/mi-proyecto"
y seguiré las directrices del stack automáticamente.

**Opción C - Workflow guiado:**
```
/claudable-workflow
```

### Mejorar Diseño
```
/frontend-design
```

### Ver Screenshot
```
Usa el Playwright MCP: "Toma un screenshot de localhost:5173"
```

## Templates

Los templates base están en `/templates`:
- `vite-react-shadcn/` - Proyecto base con todo configurado

## Comandos Típicos de Proyecto

```bash
npm run dev      # desarrollo local
npm run build    # build producción
npm run preview  # preview del build
```
