#!/bin/bash

# Script to fix git remotes for AMLC handbook repositories
# This helps members configure their local repos correctly

set -e

echo "🔧 AMLC Handbook - Git Remote Configuration Helper"
echo "=================================================="
echo ""

# Detect which repo we're in
CURRENT_REPO=$(git remote get-url origin 2>/dev/null || echo "unknown")

if [[ $CURRENT_REPO == *"amlc-handbook-staging"* ]]; then
    echo "📍 Detected: You're in the STAGING (private) repository"
    echo ""
    echo "Current remotes:"
    git remote -v
    echo ""
    
    read -p "Do you want to add the public repo as a remote named 'public'? (y/n) " -n 1 -r
    echo ""
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Check if 'public' remote already exists
        if git remote get-url public &>/dev/null; then
            echo "⚠️  'public' remote already exists. Updating..."
            git remote set-url public git@github.com:amlcoftherockies/amlc-handbook.git
        else
            echo "➕ Adding 'public' remote..."
            git remote add public git@github.com:amlcoftherockies/amlc-handbook.git
        fi
        
        echo "📥 Fetching from public repo..."
        git fetch public
        
        echo ""
        echo "✅ Configuration complete!"
        echo ""
        echo "Your remotes:"
        git remote -v
        echo ""
        echo "You can now:"
        echo "  - Pull from public: git fetch public && git merge public/main"
        echo "  - View public branches: git branch -r | grep public"
    fi

elif [[ $CURRENT_REPO == *"amlc-handbook.git"* ]] && [[ $CURRENT_REPO != *"staging"* ]]; then
    echo "📍 Detected: You're in the PUBLIC repository"
    echo ""
    echo "⚠️  WARNING: Your remotes appear to be misconfigured!"
    echo ""
    echo "Current remotes:"
    git remote -v
    echo ""
    
    # Check if origin points to staging (incorrect)
    if [[ $CURRENT_REPO == *"staging"* ]]; then
        echo "❌ Problem: 'origin' points to staging repo (should point to public)"
        echo ""
        read -p "Do you want to fix this? (y/n) " -n 1 -r
        echo ""
        
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            echo "🔄 Swapping remotes..."
            
            # Rename origin to staging
            git remote rename origin staging
            
            # Add correct origin (public)
            git remote add origin git@github.com:amlcoftherockies/amlc-handbook.git
            
            echo ""
            echo "✅ Remotes fixed!"
            echo ""
            echo "New configuration:"
            git remote -v
        fi
    else
        echo "✅ Your remotes look correct!"
        echo ""
        
        read -p "Do you want to add the staging repo as a remote? (y/n) " -n 1 -r
        echo ""
        
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            if git remote get-url staging &>/dev/null; then
                echo "⚠️  'staging' remote already exists. Updating..."
                git remote set-url staging git@github.com:amlcoftherockies/amlc-handbook-staging.git
            else
                echo "➕ Adding 'staging' remote..."
                git remote add staging git@github.com:amlcoftherockies/amlc-handbook-staging.git
            fi
            
            echo "📥 Fetching from staging repo..."
            git fetch staging
            
            echo ""
            echo "✅ Configuration complete!"
            echo ""
            echo "Your remotes:"
            git remote -v
        fi
    fi

else
    echo "❓ Could not detect repository type"
    echo ""
    echo "Current remote:"
    echo "$CURRENT_REPO"
    echo ""
    echo "Please run this script from either:"
    echo "  - amlc-handbook (public repo)"
    echo "  - amlc-handbook-staging (private repo)"
fi

echo ""
echo "📚 For more information, see: Systems/two-repo-workflow.md"

