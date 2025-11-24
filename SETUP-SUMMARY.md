# AMLC Handbook Setup Summary

This document summarizes all the changes made to set up the two-repository workflow and enhance the handbook.

## ✅ Completed Tasks

### 1. Two-Repository Sync Workflow

#### GitHub Actions Created
- **`.github/workflows/sync-from-public.yml`** (for staging repo)
  - Automatically syncs changes from public repo to staging
  - Runs daily at 2 AM UTC
  - Can be triggered manually
  - Creates PRs for review when changes are detected
  - Handles merge conflicts gracefully

- **`.github/workflows/notify-staging-on-merge.yml`** (for public repo)
  - Notifies when PRs are merged in public repo
  - Adds helpful comments to merged PRs
  - Can trigger staging sync (requires PAT setup)

#### Documentation Created
- **`Systems/two-repo-workflow.md`** - Comprehensive guide for working with both repos
- **`Systems/README.md`** - Systems overview and quick start guides
- **`Systems/fix-git-remotes.sh`** - Helper script to configure git remotes

### 2. Local Git Remotes Configuration

Your current repository (`amlc-handbook`) has remotes configured as:
- `origin` → `amlc-handbook-staging` (private) ❌ **NEEDS FIXING**
- `upstream` → `amlc-handbook` (public) ❌ **NEEDS FIXING**

#### To Fix Your Local Setup:

**Option 1: Use the helper script**
```bash
cd /Users/chasechristensen/amlc-handbook
./Systems/fix-git-remotes.sh
```

**Option 2: Manual fix**
```bash
# Since this folder is actually the PUBLIC repo, fix the remotes:
cd /Users/chasechristensen/amlc-handbook

# Rename current origin to staging
git remote rename origin staging

# Remove upstream
git remote remove upstream

# Add correct origin (public)
git remote add origin git@github.com:amlcoftherockies/amlc-handbook.git

# Verify
git remote -v
# Should show:
# origin    git@github.com:amlcoftherockies/amlc-handbook.git (fetch)
# origin    git@github.com:amlcoftherockies/amlc-handbook.git (push)
# staging   git@github.com:amlcoftherockies/amlc-handbook-staging.git (fetch)
# staging   git@github.com:amlcoftherockies/amlc-handbook-staging.git (push)
```

### 3. Handbook Content Improvements

#### New Files Created
- **`Foundation/code-of-conduct.md`** - Community Code of Conduct
- **`Systems/two-repo-workflow.md`** - Two-repo workflow documentation
- **`Systems/README.md`** - Systems and infrastructure overview
- **`Systems/fix-git-remotes.sh`** - Git remote configuration helper

#### Files Updated
- **`README.md`**
  - Added repository ecosystem section
  - Added comprehensive table of contents
  - Fixed broken Code of Conduct link
  - Fixed broken PR template link
  - Added reference to two-repo workflow

- **`Foundation/community-offerings.md`**
  - Fixed typos ("beneftis" → "benefits")
  - Fixed broken link to proposals
  - Added links to website, Discord, YouTube
  - Improved formatting and consistency

- **`Foundation/committees.md`**
  - Added committee descriptions
  - Fixed broken charter links
  - Added "How to Join a Committee" section
  - Added "Proposing a New Committee" section

### 4. Website Repository Reference

The handbook now includes references to the website repository throughout:

- **Repository**: [amlcoftherockies/amlcoftherockies.org](https://github.com/amlcoftherockies/amlcoftherockies.org)
- **Live Site**: [amlcoftherockies.org](https://amlcoftherockies.org)

Referenced in:
- `README.md` - Repository ecosystem section
- `Systems/README.md` - AMLC Website section with relationship to handbook
- `Foundation/community-offerings.md` - Member benefits (blog, profiles)

## 🔧 Next Steps

### Immediate Actions Required

1. **Fix Your Local Git Remotes**
   ```bash
   cd /Users/chasechristensen/amlc-handbook
   ./Systems/fix-git-remotes.sh
   ```

2. **Set Up Staging Repository**
   - Copy the sync workflow to staging repo:
     ```bash
     # In staging repo
     cp ../amlc-handbook/.github/workflows/sync-from-public.yml .github/workflows/
     ```

3. **Configure GitHub Secrets (Optional)**
   - For automatic sync triggers, add `STAGING_SYNC_TOKEN` secret to public repo
   - This is a Personal Access Token with `repo` scope

4. **Test the Workflow**
   - Make a small change in public repo
   - Merge a PR
   - Verify sync workflow runs in staging repo

### Recommended Actions

1. **Review and Commit Changes**
   ```bash
   git status
   git add .
   git commit -m "Add two-repo workflow and enhance handbook documentation"
   git push origin main  # After fixing remotes
   ```

2. **Clone Staging Repository**
   ```bash
   cd ~/projects  # or wherever you keep repos
   git clone git@github.com:amlcoftherockies/amlc-handbook-staging.git
   cd amlc-handbook-staging
   git remote add public git@github.com:amlcoftherockies/amlc-handbook.git
   ```

3. **Update Website**
   - Review handbook changes that should be reflected on website
   - Update website content accordingly

## 📚 Documentation Structure

```
amlc-handbook/
├── .github/
│   ├── workflows/
│   │   ├── main.yml (existing - auto-assign)
│   │   ├── sync-from-public.yml (NEW - for staging)
│   │   └── notify-staging-on-merge.yml (NEW - for public)
│   ├── ISSUE_TEMPLATE/
│   └── Committees/
├── Foundation/
│   ├── code-of-conduct.md (NEW)
│   ├── committees.md (UPDATED)
│   ├── community-funding.md
│   ├── community-offerings.md (UPDATED)
│   ├── community-structure.md
│   ├── mission-values.md
│   └── proposals.md
├── Systems/ (NEW DIRECTORY)
│   ├── README.md (NEW)
│   ├── two-repo-workflow.md (NEW)
│   └── fix-git-remotes.sh (NEW)
├── README.md (UPDATED)
└── ...
```

## 🎯 Workflow Summary

### For Public Contributors
1. Fork `amlc-handbook` (public)
2. Make changes
3. Submit PR
4. After merge → Auto-syncs to staging

### For AMLC Members
1. Work in `amlc-handbook-staging` (private)
2. Submit PR in staging
3. After approval → Manually PR to public (when ready)

## 📞 Support

- **Questions**: Ask in Discord or email leadership@amlcoftherockies.org
- **Issues**: Open an issue in the appropriate repository
- **Documentation**: See `Systems/two-repo-workflow.md` for detailed workflow

---

**Created**: November 24, 2024  
**Author**: AMLC Bot (Augment Agent)

