# Claudable

Metaproyecto de Claude Code para crear páginas web profesionales al nivel de Lovable.

## Qué es esto

**NO es una web**, es una "caja de herramientas". Cuando abras Claude Code en este directorio, tendrás todo configurado para pedirle que te cree webs profesionales.

## Cómo usar

1. Abre Claude Code en este directorio
2. Pide lo que necesites: "Crea una landing page para una startup de IA"
3. Usa los skills disponibles para guiar el proceso

## Skills Disponibles

### Plugin Oficial (Anthropic)
| Skill | Descripción | Cuándo usar |
|-------|-------------|-------------|
| `/frontend-design` | Crear interfaces distintivas y profesionales | Para cualquier UI/diseño |

### Skills Locales
| Skill | Descripción | Cuándo usar |
|-------|-------------|-------------|
| `/claudable-stack` | Stack técnico y sistema de diseño | Al configurar un proyecto |
| `/claudable-workflow` | Workflow paso a paso | Al iniciar un proyecto nuevo |
| `/claudable-design` | Directrices de diseño visual | Complementa frontend-design |

## MCPs Configurados

- **Nanobanana** - Generación de imágenes con Gemini (requiere `GOOGLE_API_KEY`)
- **Figma** - Diseño a código pixel-perfect
- **Playwright** - Screenshots y testing visual
- **Supabase** - Backend (requiere `SUPABASE_ACCESS_TOKEN`)

## Stack Default

- React 18 + TypeScript
- Vite
- Tailwind CSS v4
- shadcn/ui (estilo "new-york")
- Motion para animaciones

## Templates

El directorio `templates/` contiene proyectos base listos para usar:

- `vite-react-shadcn/` - Proyecto base completo con todo configurado

### Usar un template

```bash
# Copiar template a nuevo proyecto
cp -r templates/vite-react-shadcn ../mi-nuevo-proyecto
cd ../mi-nuevo-proyecto
npm install
npm run dev
```

## Configuración de MCPs

Para usar todos los MCPs, configura estas variables de entorno:

```bash
# Para Nanobanana (generación de imágenes)
export GOOGLE_API_KEY="tu-api-key-de-google"

# Para Supabase (backend)
export SUPABASE_ACCESS_TOKEN="tu-access-token"
```

## Reglas de Diseño

1. **NUNCA** uses clases de color directas (`text-white`, `bg-zinc-900`)
2. **SIEMPRE** usa tokens semánticos (`bg-background`, `text-foreground`)
3. **EVITA** tipografías genéricas (Inter, Arial, Roboto)
4. **PREFIERE** fuentes con personalidad (Space Grotesk, DM Sans, Clash Display)

## Estructura del Metaproyecto

```
claudable/
├── .claude/
│   └── skills/
│       ├── claudable-stack/SKILL.md
│       ├── claudable-workflow/SKILL.md
│       └── claudable-design/SKILL.md
├── .mcp.json
├── CLAUDE.md
├── templates/
│   └── vite-react-shadcn/
└── README.md
```

## Recursos

- [Lovable Documentation](https://docs.lovable.dev/)
- [Claude Code Skills](https://code.claude.com/docs/en/skills)
- [shadcn/ui](https://ui.shadcn.com/)
- [Tailwind CSS](https://tailwindcss.com/)
