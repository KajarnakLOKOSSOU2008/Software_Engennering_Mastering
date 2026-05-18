#!/bin/bash
# Script pour pousser sur GitHub
# Usage: bash PUSH_TO_GITHUB.sh

set -e

REPO_URL="https://github.com/KajarnakLOKOSSOU2008/softeng-lms.git"
BRANCH="main"

echo "🎓 SoftEng LMS — Push vers GitHub"
echo "=================================="

# Init git si pas déjà fait
if [ ! -d ".git" ]; then
  git init
  git branch -M main
  echo "✅ Git initialisé"
fi

# Configurer remote
if git remote get-url origin 2>/dev/null; then
  git remote set-url origin "$REPO_URL"
else
  git remote add origin "$REPO_URL"
fi
echo "✅ Remote configuré: $REPO_URL"

# Add tout
git add -A
echo "✅ Fichiers ajoutés"

# Commit
TIMESTAMP=$(date +"%Y-%m-%d %H:%M")
git commit -m "🚀 SoftEng LMS v1.0 — Projet complet ($TIMESTAMP)

- 10 modules (700+ heures de contenu)
- Frontend Next.js 14 + React 18
- Authentification Supabase (Magic Link + OAuth)
- Éditeur de code Monaco (50+ langages)
- Mode hors-ligne PWA + Service Worker
- Certificats PDF professionnels
- Leaderboard temps réel
- Mentorship 1-on-1
- Admin panel
- Docker + CI/CD GitHub Actions
- IA (LLMs, RAG) + Blockchain (Solidity)"

echo "✅ Commit créé"

# Push
echo ""
echo "📤 Push vers $REPO_URL..."
git push -u origin "$BRANCH" --force

echo ""
echo "✅ Projet pushé avec succès!"
echo "🔗 Voir: $REPO_URL"
echo ""
echo "Prochaines étapes:"
echo "1. Crée un projet Supabase (https://supabase.com)"
echo "2. Exécute backend/migrations/001_schema.sql"
echo "3. Configure les variables d'environnement sur Vercel"
echo "4. Deploy: vercel --prod"