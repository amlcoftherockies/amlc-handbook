# Staging Branch Workflow

## Overview

AMLC uses a **single public repository** with a branch-based workflow for transparency and collaboration.

**Repository**: [amlc-handbook](https://github.com/amlcoftherockies/amlc-handbook) (PUBLIC)

### Branches

| Branch | Purpose | Visibility | Who Can Commit |
|--------|---------|------------|----------------|
| `main` | Official, approved content | PUBLIC | Via PR only (protected) |
| `staging` | Work-in-progress, drafts | PUBLIC | Organizers, reviewers |
| `feature-*` | Specific proposals/changes | PUBLIC | Anyone (via PR) |

**⚠️ CRITICAL: ALL BRANCHES ARE PUBLIC!**

Everything you commit to any branch is visible to the world. See [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md).

## Workflow Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                    STAGING BRANCH WORKFLOW                   │
│                         (All Public)                         │
└─────────────────────────────────────────────────────────────┘

Work-in-Progress
      ↓
  staging branch (PUBLIC)
      ↓
  Iterate & refine publicly
      ↓
  PR: staging → main
      ↓
  Review & approval
      ↓
  main branch (PUBLIC & OFFICIAL)


┌─────────────────────────────────────────────────────────────┐
│                  FEATURE BRANCH WORKFLOW                     │
│                         (All Public)                         │
└─────────────────────────────────────────────────────────────┘

New idea/proposal
      ↓
  feature-name branch (PUBLIC)
      ↓
  Develop & iterate
      ↓
  PR: feature-name → main
      ↓
  Review & approval
      ↓
  main branch (PUBLIC & OFFICIAL)
```

## When to Use Each Branch

### Use `main` for:
- ✅ Official, approved policies
- ✅ Finalized documentation
- ✅ Completed proposals (CEPs)
- ✅ Production-ready content

**Protection**: Requires PR and approval to merge

### Use `staging` for:
- ✅ Work-in-progress documentation
- ✅ Draft proposals needing feedback
- ✅ Experimental ideas
- ✅ Iterative improvements
- ✅ Collaborative brainstorming

**Who can commit**: Organizers and reviewers (direct commits allowed)

### Use `feature-*` branches for:
- ✅ Specific proposals or CEPs
- ✅ Isolated changes
- ✅ External contributions
- ✅ Anything that needs focused review

**Who can create**: Anyone (via fork or branch)

## Step-by-Step Workflows

### Workflow 1: Quick Iteration on Staging

**Best for**: Organizers/reviewers working on drafts

```bash
# 1. Switch to staging
git checkout staging
git pull upstream staging

# 2. Make changes
# Edit files...

# 3. Commit and push
git add .
git commit -m "Draft: Add new proposal outline"
git push upstream staging

# 4. When ready, create PR to main
# Go to GitHub and create PR: staging → main
```

### Workflow 2: Feature Branch for Proposals

**Best for**: Specific proposals, external contributors

```bash
# 1. Create feature branch from main
git checkout main
git pull upstream main
git checkout -b feature/cep-123-new-initiative

# 2. Make changes
# Edit files...

# 3. Commit and push
git add .
git commit -m "Add CEP-123: New community initiative"
git push upstream feature/cep-123-new-initiative

# 4. Create PR to main
# Go to GitHub and create PR: feature/cep-123-new-initiative → main
```

### Workflow 3: External Contributor (Fork)

**Best for**: Community members without write access

```bash
# 1. Fork the repo on GitHub

# 2. Clone your fork
git clone git@github.com:YOUR-USERNAME/amlc-handbook.git
cd amlc-handbook

# 3. Add upstream remote
git remote add upstream git@github.com:amlcoftherockies/amlc-handbook.git

# 4. Create feature branch
git checkout -b my-proposal

# 5. Make changes and commit
# Edit files...
git add .
git commit -m "Propose new community event format"

# 6. Push to your fork
git push origin my-proposal

# 7. Create PR on GitHub
# Go to GitHub and create PR: YOUR-FORK:my-proposal → amlc-handbook:main
```

## Branch Protection Rules

### Main Branch
- ✅ Requires pull request before merging
- ✅ Requires 1 approval from organizers or reviewers
- ✅ Organizers can self-approve (per approval rules)
- ✅ Reviewers need external approval
- ✅ Status checks must pass
- ❌ No direct commits (even for organizers)

### Staging Branch
- ✅ Organizers can commit directly
- ✅ Reviewers can commit directly
- ⚠️ Still public—follow Code of Conduct
- ⚠️ No sensitive information

### Feature Branches
- ✅ Anyone can create (via fork)
- ✅ No restrictions on commits
- ✅ Must PR to main for inclusion

## Best Practices

### For Staging Branch Work

**DO**:
- ✅ Use for iterative drafts
- ✅ Commit frequently with clear messages
- ✅ Ask for feedback early and often
- ✅ Mark commits as "Draft:" or "WIP:" in message
- ✅ Clean up before PR to main

**DON'T**:
- ❌ Commit sensitive information (it's public!)
- ❌ Leave broken/incomplete work indefinitely
- ❌ Bypass Code of Conduct (it's still public)
- ❌ Merge to main without PR

### For All Public Work

**REMEMBER**:
- 🌍 Everything is public and permanent
- 📝 Git history is forever
- 👀 Anyone can see your commits
- 💬 Follow Code of Conduct always
- 🔒 Use private channels for sensitive topics

See [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md)

## Commit Message Guidelines

### Good Commit Messages

```bash
# For staging/WIP
git commit -m "Draft: Outline new repository proposal process"
git commit -m "WIP: Add transparency guidelines (needs review)"
git commit -m "Iterate: Refine Code of Conduct language"

# For feature branches
git commit -m "Add CEP-042: Community mentorship program"
git commit -m "Fix typo in proposals documentation"
git commit -m "Update repository registry with new project"

# For main (via PR)
git commit -m "feat: Add repository management system and validation"
git commit -m "docs: Update transparency commitment in README"
git commit -m "fix: Correct branch protection authority hierarchy"
```

### Commit Message Format

```
<type>: <subject>

[optional body]

[optional footer]
```

**Types**:
- `feat`: New feature or enhancement
- `fix`: Bug fix or correction
- `docs`: Documentation changes
- `refactor`: Code/content restructuring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

## Merging to Main

### PR Checklist

Before creating PR from staging → main:

- [ ] All content is finalized (no "Draft:" or "WIP:")
- [ ] No sensitive information included
- [ ] Follows Code of Conduct
- [ ] Links and references are correct
- [ ] Spelling and grammar checked
- [ ] Related documentation updated
- [ ] Follows handbook style guide

### Review Process

1. **Create PR**: staging → main (or feature → main)
2. **Automated checks**: Validation workflows run
3. **Review**: Organizers/reviewers provide feedback
4. **Iterate**: Address feedback, push updates
5. **Approval**: Get required approvals
6. **Merge**: Squash and merge to main
7. **Cleanup**: Delete feature branch (staging stays)

## FAQ

### Q: Can I work on staging without everyone seeing?
**A**: No. Staging is public. For private work, use email or Discord, then document publicly when ready.

### Q: What if I accidentally commit sensitive info?
**A**: Delete immediately, contact leadership@amlcoftherockies.org, rotate credentials. See [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md).

### Q: Can I delete commits from staging?
**A**: Technically yes (force push), but avoid it. Git history is meant to be permanent. Better to add a new commit fixing the issue.

### Q: Who can approve PRs to main?
**A**: Organizers (can self-approve) and reviewers (need external approval). See [Branch Protection](/. github/BRANCH_PROTECTION.md).

### Q: How do I propose something sensitive?
**A**: Email leadership@amlcoftherockies.org or use Discord private channels. See [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md).

### Q: What's the difference between staging and feature branches?
**A**: 
- **Staging**: Long-lived, for general WIP, organizers/reviewers can commit directly
- **Feature**: Short-lived, for specific changes, anyone can create, deleted after merge

---

**See also**:
- [Transparency and Privacy Guidelines](/Foundation/transparency-and-privacy.md)
- [Branch Protection Rules](/.github/BRANCH_PROTECTION.md)
- [Proposals Process](/Foundation/proposals.md)
- [Code of Conduct](/Foundation/code-of-conduct.md)

