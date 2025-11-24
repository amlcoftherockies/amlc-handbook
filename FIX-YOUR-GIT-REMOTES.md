# 🔧 Fix Your Local Git Remotes - Action Required!

## Current Problem

Your local `amlc-handbook` directory has **backwards remotes**:
- `origin` points to `amlc-handbook-staging` (private) ❌
- `upstream` points to `amlc-handbook` (public) ❌

This is backwards because:
- This folder IS the public repo
- `origin` should point to the public repo
- `staging` should be a separate remote (not `upstream`)

## Quick Fix (Recommended)

Run the helper script I created:

```bash
cd /Users/chasechristensen/amlc-handbook
./Systems/fix-git-remotes.sh
```

The script will:
1. Detect which repo you're in
2. Offer to fix the remotes
3. Guide you through the process

## Manual Fix (If You Prefer)

```bash
cd /Users/chasechristensen/amlc-handbook

# Step 1: Rename origin to staging
git remote rename origin staging

# Step 2: Remove upstream
git remote remove upstream

# Step 3: Add correct origin (public repo)
git remote add origin git@github.com:amlcoftherockies/amlc-handbook.git

# Step 4: Fetch from new origin
git fetch origin

# Step 5: Verify configuration
git remote -v
```

### Expected Output After Fix:

```
origin    git@github.com:amlcoftherockies/amlc-handbook.git (fetch)
origin    git@github.com:amlcoftherockies/amlc-handbook.git (push)
staging   git@github.com:amlcoftherockies/amlc-handbook-staging.git (fetch)
staging   git@github.com:amlcoftherockies/amlc-handbook-staging.git (push)
```

## After Fixing Remotes

### 1. Commit and Push Your Changes

```bash
# Review what changed
git status

# Add all the new files and changes
git add .

# Commit with a descriptive message
git commit -m "Add two-repo workflow, enhance documentation, and add website references"

# Push to the PUBLIC repo (now correctly named 'origin')
git push origin main
```

### 2. Set Up Staging Repository

Clone the staging repo separately:

```bash
cd ~/projects  # or wherever you keep your repos

# Clone staging repo
git clone git@github.com:amlcoftherockies/amlc-handbook-staging.git

cd amlc-handbook-staging

# Add public repo as 'public' remote
git remote add public git@github.com:amlcoftherockies/amlc-handbook.git

# Fetch from public
git fetch public

# Verify remotes
git remote -v
```

Expected output:
```
origin    git@github.com:amlcoftherockies/amlc-handbook-staging.git (fetch)
origin    git@github.com:amlcoftherockies/amlc-handbook-staging.git (push)
public    git@github.com:amlcoftherockies/amlc-handbook.git (fetch)
public    git@github.com:amlcoftherockies/amlc-handbook.git (push)
```

### 3. Copy Sync Workflow to Staging

```bash
# From the staging repo directory
cp ../amlc-handbook/.github/workflows/sync-from-public.yml .github/workflows/

# Commit and push
git add .github/workflows/sync-from-public.yml
git commit -m "Add automated sync workflow from public repo"
git push origin main
```

## Workflow Going Forward

### Working in Public Repo
```bash
cd /Users/chasechristensen/amlc-handbook
git checkout -b my-feature
# make changes
git push origin my-feature
# Create PR on GitHub
```

### Working in Staging Repo
```bash
cd ~/projects/amlc-handbook-staging  # or wherever you cloned it
git checkout -b internal-feature
# make changes
git push origin internal-feature
# Create PR on GitHub (in staging repo)
```

### Syncing Public Changes to Staging
This happens automatically via GitHub Actions! Just wait for the daily sync or trigger it manually.

### Publishing Staging Changes to Public
This is manual - create a PR from staging to public when ready.

## Need Help?

- **Discord**: [AMLC Discord](https://discord.gg/XsHBtnBH)
- **Email**: leadership@amlcoftherockies.org
- **Documentation**: See `Systems/two-repo-workflow.md`

## Summary of What I Did

✅ Created GitHub Actions for auto-syncing repos  
✅ Created comprehensive documentation  
✅ Fixed typos and broken links throughout handbook  
✅ Added Code of Conduct  
✅ Added website repository references  
✅ Created helper scripts for git configuration  
✅ Enhanced README with table of contents  

See `SETUP-SUMMARY.md` for complete details!

