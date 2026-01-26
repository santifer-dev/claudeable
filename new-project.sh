#!/bin/bash
# Crear nuevo proyecto web desde template Claudable

set -e

if [ -z "$1" ]; then
  echo "Uso: ./new-project.sh <nombre-proyecto> [directorio-destino]"
  echo "Ejemplo: ./new-project.sh mi-landing ~/projects"
  exit 1
fi

PROJECT_NAME="$1"
DEST_DIR="${2:-$(pwd)}"
TEMPLATE_DIR="$(dirname "$0")/templates/vite-react-shadcn"
PROJECT_PATH="$DEST_DIR/$PROJECT_NAME"

if [ -d "$PROJECT_PATH" ]; then
  echo "Error: El directorio $PROJECT_PATH ya existe"
  exit 1
fi

echo "Creando proyecto '$PROJECT_NAME' en $PROJECT_PATH..."

# Copiar template
cp -r "$TEMPLATE_DIR" "$PROJECT_PATH"

# Actualizar nombre en package.json
sed -i '' "s/claudable-project/$PROJECT_NAME/g" "$PROJECT_PATH/package.json"

# Inicializar git
cd "$PROJECT_PATH"
git init -q
echo "node_modules" > .gitignore
echo "dist" >> .gitignore
echo ".DS_Store" >> .gitignore

echo ""
echo "✓ Proyecto creado en: $PROJECT_PATH"
echo ""
echo "Próximos pasos:"
echo "  cd $PROJECT_PATH"
echo "  npm install"
echo "  npm run dev"
echo ""
echo "Abre Claude Code en el proyecto para empezar a trabajar."
