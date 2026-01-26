# Claudable

> [Leer en Español](README.es.md)

A Claude Code metaproject for creating professional web pages at Lovable-level quality.

## What is this

**NOT a website** - it's a "toolbox". When you open Claude Code in this directory, you'll have everything configured to ask it to create professional websites for you.

## How to use

1. Open Claude Code in this directory
2. Ask for what you need: "Create a landing page for an AI startup"
3. Use the available skills to guide the process

## Available Skills

### Official Plugin (Anthropic)
| Skill | Description | When to use |
|-------|-------------|-------------|
| `/frontend-design` | Create distinctive, professional interfaces | For any UI/design work |

### Local Skills
| Skill | Description | When to use |
|-------|-------------|-------------|
| `/claudable-stack` | Tech stack and design system | When setting up a project |
| `/claudable-workflow` | Step-by-step workflow | When starting a new project |
| `/claudable-design` | Visual design guidelines | Complements frontend-design |

## Configured MCPs

- **Nanobanana** - Image generation with Gemini (requires `GOOGLE_API_KEY`)
- **Figma** - Pixel-perfect design to code
- **Playwright** - Screenshots and visual testing
- **Supabase** - Backend (requires `SUPABASE_ACCESS_TOKEN`)

## Default Stack

- React 18 + TypeScript
- Vite
- Tailwind CSS v4
- shadcn/ui ("new-york" style)
- Motion for animations

## Templates

The `templates/` directory contains ready-to-use base projects:

- `vite-react-shadcn/` - Complete base project with everything configured

### Using a template

```bash
# Copy template to new project
cp -r templates/vite-react-shadcn ../my-new-project
cd ../my-new-project
npm install
npm run dev
```

## MCP Configuration

To use all MCPs, set these environment variables:

```bash
# For Nanobanana (image generation)
export GOOGLE_API_KEY="your-google-api-key"

# For Supabase (backend)
export SUPABASE_ACCESS_TOKEN="your-access-token"
```

## Design Rules

1. **NEVER** use direct color classes (`text-white`, `bg-zinc-900`)
2. **ALWAYS** use semantic tokens (`bg-background`, `text-foreground`)
3. **AVOID** generic typefaces (Inter, Arial, Roboto)
4. **PREFER** fonts with personality (Space Grotesk, DM Sans, Clash Display)

## Metaproject Structure

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

## Resources

- [Lovable Documentation](https://docs.lovable.dev/)
- [Claude Code Skills](https://code.claude.com/docs/en/skills)
- [shadcn/ui](https://ui.shadcn.com/)
- [Tailwind CSS](https://tailwindcss.com/)

## License

MIT
