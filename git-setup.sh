#!/usr/bin/env bash
# Simple git setup script for the project
# Usage:
# 1) Make executable: chmod +x git-setup.sh
# 2) Run: ./git-setup.sh [github-remote-url]
# If you pass a GitHub remote URL (HTTPS), the script will add it and push to main.

set -e

echo "Checking for git..."
if ! command -v git >/dev/null 2>&1; then
  echo "git is not installed or not in PATH. Install git and re-run this script." >&2
  exit 1
fi

if [ -d .git ]; then
  echo "A git repo already exists in this folder. Exiting.";
  exit 0
fi

read -p "Create initial git repository here? (y/N) " confirm
if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
  echo "Aborted by user."; exit 0
fi

# Init, add, commit
git init
git add .
git commit -m "chore: initial commit — portfolio (Neema Wilfred)"

echo "Created initial commit on local 'master' or 'main'. Ensuring branch named 'main'..."
git branch -M main || true

REMOTE_URL="$1"
if [ -n "$REMOTE_URL" ]; then
  echo "Adding remote origin: $REMOTE_URL"
  git remote add origin "$REMOTE_URL"
  echo "Pushing to origin main (you may be prompted for credentials)..."
  git push -u origin main
  echo "Pushed — done."
else
  echo "No remote URL provided. To add remote later run:\n  git remote add origin <your-repo-url>\n  git push -u origin main"
fi

echo "All done. If you want me to help deploy to Vercel/Netlify, provide the GitHub repo URL or grant access." 
