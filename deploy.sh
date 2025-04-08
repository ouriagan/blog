#!/bin/bash

# 🧼 Étape 1 : rendre le blog Quarto
echo "🛠️  Rendu du blog avec Quarto..."
quarto render

# ➕ Étape 2 : ajouter les fichiers modifiés
echo "📦 Ajout des fichiers modifiés..."
git add .

# 📝 Étape 3 : commit avec message personnalisé ou par défaut
default_message="📅 Mise à jour du blog ($(date '+%Y-%m-%d %H:%M'))"

echo "💬 Entrez un message de commit (laisser vide pour utiliser le message par défaut) :"
read commit_message

if [ -z "$commit_message" ]; then
  commit_message="$default_message"
fi

git commit -m "$commit_message"

# 🚀 Étape 4 : push vers la branche main
echo "🚀 Push vers GitHub..."
git push origin main

echo "✅ Blog mis à jour et publié sur GitHub !"