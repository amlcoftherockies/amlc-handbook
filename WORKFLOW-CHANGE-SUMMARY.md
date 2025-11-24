# Workflow Change: Two Repos → Single Repo with Staging Branch

**Date**: November 24, 2024  
**Change**: Moved from two-repository workflow to single public repository with staging branch

---

## 🎯 What Changed

### Before (Two-Repository Workflow)
- **Public repo**: `amlc-handbook` - Approved content only
- **Private repo**: `amlc-handbook-staging` - Internal discussions and WIP
- **Workflow**: Work in private, sync to public when ready

### After (Single-Repository Workflow)
- **Public repo**: `amlc-handbook` - Everything (including WIP)
  - `main` branch - Official, approved content
  - `staging` branch - Work-in-progress (also public!)
- **Workflow**: Work publicly on staging, PR to main when ready

---

## 🌍 Why We Changed

### Commitment to Radical Transparency
- **Show our work**: The "sausage-making" is part of our story
- **Build trust**: Nothing hidden, everything documented
- **Learn in public**: Others can learn from our process
- **Simpler workflow**: No syncing between repos

### Alignment with Values
- **Transparency**: Our core value, now fully embodied
- **Collective Intelligence**: Public collaboration improves ideas
- **Perspective is Everything**: Diverse input from public visibility

---

## ⚠️ Critical Changes

### Everything is Now Public

**What this means**:
- ✅ All branches are public (including `staging`)
- ✅ All issues and PRs are public
- ✅ All discussions are public
- ✅ All commit history is public
- ✅ Even work-in-progress is public

**What you must do**:
- 🔒 Never commit sensitive information
- 💬 Always follow Code of Conduct
- 🤔 Think before you post (it's permanent)
- 📧 Use private channels for truly sensitive topics

---

## 📁 Files Created

### New Documentation (3 files)
1. **`Foundation/transparency-and-privacy.md`** - Guidelines for public work and when to use private channels
2. **`Systems/staging-branch-workflow.md`** - How to use the new staging branch workflow
3. **`WORKFLOW-CHANGE-SUMMARY.md`** - This file

### Updated Documentation (3 files)
4. **`README.md`** - Added public repository warning, updated ecosystem section
5. **`Systems/repositories.md`** - Archived staging repo, updated handbook entry
6. **`Systems/two-repo-workflow.md`** - Marked as deprecated, kept for historical reference

---

## 🔄 New Workflow

### Daily Work

```bash
# Work on staging branch (public WIP)
git checkout staging
# Make changes...
git commit -m "Draft: New proposal outline"
git push upstream staging

# When ready, PR to main
# Create PR: staging → main on GitHub
```

### For Specific Proposals

```bash
# Create feature branch
git checkout -b feature/cep-123
# Make changes...
git commit -m "Add CEP-123: New initiative"
git push upstream feature/cep-123

# Create PR: feature/cep-123 → main on GitHub
```

---

## 🔒 When Privacy is Needed

### Options for Sensitive Discussions

1. **Email Leadership** (Recommended)
   - leadership@amlcoftherockies.org
   - For personal matters, sensitive issues

2. **Discord Private Channels**
   - #private-leadership or #members-only
   - For real-time member discussions

3. **GitHub Security Advisories**
   - For security vulnerabilities only
   - Responsible disclosure process

4. **Private Repository** (Rare)
   - Requires CEP justification
   - Must define what will eventually be public

**See**: [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md)

---

## 📋 Action Items

### For Repository Admins

- [x] Create `staging` branch in public repo
- [x] Update documentation
- [ ] **Archive `amlc-handbook-staging` repository on GitHub**
- [ ] Update GitHub repo descriptions
- [ ] Announce change to community

### For All Members

- [ ] Read [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md)
- [ ] Read [Staging Branch Workflow](/Systems/staging-branch-workflow.md)
- [ ] Update local git setup (if needed)
- [ ] Remember: Everything is public now!

---

## 🗄️ Archiving the Staging Repo

### Steps to Archive (Admin Only)

1. Go to https://github.com/amlcoftherockies/amlc-handbook-staging
2. Click **Settings**
3. Scroll to bottom → **Danger Zone**
4. Click **Archive this repository**
5. Confirm the action

**What archiving does**:
- ✅ Makes repository read-only
- ✅ Preserves all history
- ✅ Prevents new commits/issues/PRs
- ✅ Still accessible for reference
- ❌ Does NOT delete the repository

**Note**: Archived repos can be unarchived if needed.

---

## 📖 Key Documents

### Must Read
- **[Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md)** - When to use public vs. private
- **[Staging Branch Workflow](/Systems/staging-branch-workflow.md)** - How to work with branches
- **[Code of Conduct](/Foundation/code-of-conduct.md)** - Required for all public work

### Reference
- **[Repository Registry](/Systems/repositories.md)** - Updated with archived staging repo
- **[Two-Repo Workflow](/Systems/two-repo-workflow.md)** - Historical reference (deprecated)
- **[Branch Protection](/. github/BRANCH_PROTECTION.md)** - Approval rules

---

## ❓ FAQ

### Q: What if I accidentally commit sensitive info?
**A**: Delete immediately, contact leadership@amlcoftherockies.org, rotate credentials. See [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md).

### Q: Can I still have private discussions?
**A**: Yes! Use email, Discord private channels, or security advisories. See [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md).

### Q: What happens to the old staging repo?
**A**: It will be archived (read-only) but preserved for historical reference.

### Q: Is the staging branch protected?
**A**: No. Organizers and reviewers can commit directly. But it's still public!

### Q: What if I need to work on something sensitive?
**A**: Use private channels (email/Discord), then document publicly when appropriate. See [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md).

### Q: Can we go back to two repos?
**A**: Yes, if needed. But we're committed to trying full transparency first.

---

## 🎉 Benefits of This Change

### For the Community
- ✅ Full transparency—see how decisions are made
- ✅ Participate in discussions earlier
- ✅ Learn from our process
- ✅ Trust through openness

### For Contributors
- ✅ Simpler workflow—one repo, not two
- ✅ See context and history
- ✅ Contribute to WIP
- ✅ No syncing confusion

### For Organizers
- ✅ No manual syncing between repos
- ✅ Everything in one place
- ✅ Demonstrates commitment to transparency
- ✅ Easier to manage

---

## 📞 Questions or Concerns?

- **Email**: leadership@amlcoftherockies.org
- **Discord**: [AMLC Discord](https://discord.gg/XsHBtnBH)
- **Issues**: Open an issue in this repo (it's public!)

---

**This change reflects our commitment to radical transparency and learning in public. We're excited to show our work and build trust through openness!** 🚀

