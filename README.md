# Claudable

**[:gb: English](#the-problem)** | **[:es: Español](#es-español)**

> A Claude Code metaproject for creating professional web pages at Lovable-level quality.

---

## The Problem

Building professional, production-ready web applications requires:
- Setting up the same stack over and over (React, TypeScript, Tailwind, shadcn)
- Remembering design best practices and avoiding common pitfalls
- Configuring multiple tools (Figma, Supabase, image generation, etc.)
- Maintaining consistency across projects

## The Solution

**Claudable** is a pre-configured "toolbox" for Claude Code. Open it in this directory and you have everything ready to create professional websites instantly:

- **Skills** that guide Claude to follow best practices
- **MCPs** pre-configured for design, backend, and image generation
- **Templates** ready to use with the optimal stack
- **Design rules** enforced automatically (semantic tokens, custom fonts, etc.)

---

## Tech Stack

![React](https://img.shields.io/badge/React_18-61DAFB?style=flat&logo=react&logoColor=black)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat&logo=typescript&logoColor=white)
![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat&logo=vite&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS_v4-06B6D4?style=flat&logo=tailwindcss&logoColor=white)
![shadcn/ui](https://img.shields.io/badge/shadcn/ui-000000?style=flat&logo=shadcnui&logoColor=white)
![Motion](https://img.shields.io/badge/Motion-FF4154?style=flat&logo=framer&logoColor=white)

---

## How to Use

1. Open Claude Code in this directory
2. Ask for what you need: *"Create a landing page for an AI startup"*
3. Use the available skills to guide the process

### Available Skills

#### Official Plugin (Anthropic)
| Skill | Description |
|-------|-------------|
| `/frontend-design` | Create distinctive, professional interfaces |

#### Local Skills
| Skill | Description |
|-------|-------------|
| `/claudable-stack` | Tech stack and design system |
| `/claudable-workflow` | Step-by-step workflow for new projects |
| `/claudable-design` | Visual design guidelines |
| `/readme-pro` | Professional bilingual READMEs for GitHub |

---

## Configured MCPs

| MCP | Use | Requires |
|-----|-----|----------|
| **Nanobanana** | Image generation with Gemini | `GOOGLE_API_KEY` |
| **Figma** | Pixel-perfect design to code | OAuth via URL |
| **Playwright** | Screenshots and visual testing | - |
| **Supabase** | Backend (DB, auth, storage) | `SUPABASE_ACCESS_TOKEN` |

---

## Templates

The `templates/` directory contains ready-to-use base projects:

```bash
# Copy template to new project
cp -r templates/vite-react-shadcn ../my-new-project
cd ../my-new-project
npm install
npm run dev
```

---

## Design Rules

1. **NEVER** use direct color classes (`text-white`, `bg-zinc-900`)
2. **ALWAYS** use semantic tokens (`bg-background`, `text-foreground`)
3. **AVOID** generic typefaces (Inter, Arial, Roboto)
4. **PREFER** fonts with personality (Space Grotesk, DM Sans, Clash Display)

---

## Project Structure

```
claudable/
├── .claude/
│   └── skills/
│       ├── claudable-stack/SKILL.md
│       ├── claudable-workflow/SKILL.md
│       ├── claudable-design/SKILL.md
│       └── readme-pro/SKILL.md
├── .mcp.json
├── CLAUDE.md
├── templates/
│   └── vite-react-shadcn/
└── README.md
```

---

## License

MIT

---

---

# :es: Español

> Un metaproyecto de Claude Code para crear páginas web profesionales al nivel de Lovable.

---

## El Problema

Construir aplicaciones web profesionales y listas para producción requiere:
- Configurar el mismo stack una y otra vez (React, TypeScript, Tailwind, shadcn)
- Recordar las mejores prácticas de diseño y evitar errores comunes
- Configurar múltiples herramientas (Figma, Supabase, generación de imágenes, etc.)
- Mantener consistencia entre proyectos

## La Solución

**Claudable** es una "caja de herramientas" preconfigurada para Claude Code. Ábrelo en este directorio y tendrás todo listo para crear sitios web profesionales al instante:

- **Skills** que guían a Claude a seguir las mejores prácticas
- **MCPs** preconfigurados para diseño, backend y generación de imágenes
- **Templates** listos para usar con el stack óptimo
- **Reglas de diseño** aplicadas automáticamente (tokens semánticos, fuentes personalizadas, etc.)

---

## Tech Stack

![React](https://img.shields.io/badge/React_18-61DAFB?style=flat&logo=react&logoColor=black)
![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=flat&logo=typescript&logoColor=white)
![Vite](https://img.shields.io/badge/Vite-646CFF?style=flat&logo=vite&logoColor=white)
![Tailwind CSS](https://img.shields.io/badge/Tailwind_CSS_v4-06B6D4?style=flat&logo=tailwindcss&logoColor=white)
![shadcn/ui](https://img.shields.io/badge/shadcn/ui-000000?style=flat&logo=shadcnui&logoColor=white)
![Motion](https://img.shields.io/badge/Motion-FF4154?style=flat&logo=framer&logoColor=white)

---

## Cómo Usar

1. Abre Claude Code en este directorio
2. Pide lo que necesites: *"Crea una landing page para una startup de IA"*
3. Usa los skills disponibles para guiar el proceso

### Skills Disponibles

#### Plugin Oficial (Anthropic)
| Skill | Descripción |
|-------|-------------|
| `/frontend-design` | Crear interfaces distintivas y profesionales |

#### Skills Locales
| Skill | Descripción |
|-------|-------------|
| `/claudable-stack` | Stack técnico y sistema de diseño |
| `/claudable-workflow` | Workflow paso a paso para proyectos nuevos |
| `/claudable-design` | Directrices de diseño visual |
| `/readme-pro` | READMEs profesionales bilingües para GitHub |

---

## MCPs Configurados

| MCP | Uso | Requiere |
|-----|-----|----------|
| **Nanobanana** | Generación de imágenes con Gemini | `GOOGLE_API_KEY` |
| **Figma** | Diseño a código pixel-perfect | OAuth via URL |
| **Playwright** | Screenshots y testing visual | - |
| **Supabase** | Backend (DB, auth, storage) | `SUPABASE_ACCESS_TOKEN` |

---

## Templates

El directorio `templates/` contiene proyectos base listos para usar:

```bash
# Copiar template a nuevo proyecto
cp -r templates/vite-react-shadcn ../mi-nuevo-proyecto
cd ../mi-nuevo-proyecto
npm install
npm run dev
```

---

## Reglas de Diseño

1. **NUNCA** uses clases de color directas (`text-white`, `bg-zinc-900`)
2. **SIEMPRE** usa tokens semánticos (`bg-background`, `text-foreground`)
3. **EVITA** tipografías genéricas (Inter, Arial, Roboto)
4. **PREFIERE** fuentes con personalidad (Space Grotesk, DM Sans, Clash Display)

---

## Estructura del Proyecto

```
claudable/
├── .claude/
│   └── skills/
│       ├── claudable-stack/SKILL.md
│       ├── claudable-workflow/SKILL.md
│       ├── claudable-design/SKILL.md
│       └── readme-pro/SKILL.md
├── .mcp.json
├── CLAUDE.md
├── templates/
│   └── vite-react-shadcn/
└── README.md
```

---

## Licencia

MIT

---

## Let's Connect

[![Website](https://img.shields.io/badge/santifer.io-000?style=for-the-badge&logo=safari&logoColor=white)](https://santifer.io)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/santifer)
[![Email](https://img.shields.io/badge/Email-EA4335?style=for-the-badge&logo=gmail&logoColor=white)](mailto:hola@santifer.io)
