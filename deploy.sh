#!/bin/bash
# deploy.sh — pubblica Meeting Intelligence su GitHub Pages
# Uso: bash deploy.sh <tuo-username-github> <nome-repository>

set -e

USERNAME=${1:-"your-username"}
REPO=${2:-"meeting-intelligence"}

echo ""
echo "╔══════════════════════════════════════╗"
echo "║   Meeting Intelligence — Deploy      ║"
echo "╚══════════════════════════════════════╝"
echo ""

if ! command -v git &> /dev/null; then
  echo "❌ git non trovato. Installalo da https://git-scm.com"
  exit 1
fi

echo "📁 Inizializzazione repository..."
git init
git add .
git commit -m "🚀 Meeting Intelligence — first deploy"
git branch -M main

echo ""
echo "🔗 Collegamento a GitHub..."
git remote add origin "https://github.com/${USERNAME}/${REPO}.git"

echo ""
echo "📤 Push su GitHub..."
git push -u origin main

echo ""
echo "✅ Deploy completato!"
echo ""
echo "Ora vai su:"
echo "   github.com/${USERNAME}/${REPO} → Settings → Pages"
echo "   Source: Deploy from branch → main → / (root) → Save"
echo ""
echo "Tra 1-2 minuti l'app sarà live su:"
echo "   https://${USERNAME}.github.io/${REPO}/"
echo ""
