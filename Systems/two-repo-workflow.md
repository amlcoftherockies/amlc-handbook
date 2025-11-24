# Two-Repository Workflow: Public and Staging

## Overview

AMLC of the Rockies maintains two GitHub repositories to balance transparency with internal collaboration:

- **[amlc-handbook](https://github.com/amlcoftherockies/amlc-handbook)** (PUBLIC) - For public-facing content and community contributions
- **[amlc-handbook-staging](https://github.com/amlcoftherockies/amlc-handbook-staging)** (PRIVATE) - For internal discussions, member-only content, and work-in-progress

## Why Two Repositories?

### Public Repository (`amlc-handbook`)
- **Purpose**: Transparent, community-facing documentation
- **Audience**: General public, potential members, contributors
- **Content**: Finalized policies, public proposals, community guidelines
- **Contributions**: Anyone can submit issues and PRs

### Staging Repository (`amlc-handbook-staging`)
- **Purpose**: Internal collaboration and sensitive discussions
- **Audience**: AMLC members and leadership
- **Content**: Draft proposals, internal processes, member discussions, sensitive planning
- **Contributions**: Members only

## Workflow Diagram

```
┌─────────────────────────────────────────────────────────────┐
│                    PUBLIC CONTRIBUTIONS                      │
│                                                              │
│  Community Member                                            │
│       │                                                      │
│       ├─► Opens Issue/PR in amlc-handbook (public)          │
│       │                                                      │
│       └─► PR Reviewed & Merged to main                      │
│                    │                                         │
│                    ├─► Auto-sync to staging (daily)         │
│                    │                                         │
│                    └─► Creates PR in staging for review     │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│                    MEMBER CONTRIBUTIONS                      │
│                                                              │
│  AMLC Member                                                 │
│       │                                                      │
│       ├─► Works in amlc-handbook-staging (private)          │
│       │                                                      │
│       ├─► Opens PR in staging                               │
│       │                                                      │
│       └─► After approval, manually PR to public             │
│                    (when ready for public release)          │
└─────────────────────────────────────────────────────────────┘
```

## For Members: Working with Both Repositories

### Initial Setup

1. **Clone both repositories:**
```bash
# Clone public repo
git clone git@github.com:amlcoftherockies/amlc-handbook.git amlc-handbook-public
cd amlc-handbook-public

# Clone staging repo
git clone git@github.com:amlcoftherockies/amlc-handbook-staging.git amlc-handbook-staging
cd amlc-handbook-staging
```

2. **Configure remotes in staging repo:**
```bash
cd amlc-handbook-staging

# Verify remotes
git remote -v
# Should show:
# origin    git@github.com:amlcoftherockies/amlc-handbook-staging.git (fetch)
# origin    git@github.com:amlcoftherockies/amlc-handbook-staging.git (push)

# Add public repo as 'public' remote
git remote add public git@github.com:amlcoftherockies/amlc-handbook.git
git fetch public
```

### Daily Workflow

#### Working on Internal Content
```bash
cd amlc-handbook-staging
git checkout main
git pull origin main
git checkout -b feature/my-internal-work
# Make changes
git add .
git commit -m "Add internal planning document"
git push origin feature/my-internal-work
# Open PR in staging repo
```

#### Publishing to Public
```bash
# After staging PR is approved and merged
cd amlc-handbook-public
git checkout main
git pull origin main
git checkout -b feature/public-release

# Cherry-pick or manually apply changes from staging
# Review carefully to ensure no sensitive info

git add .
git commit -m "Add community enhancement proposal"
git push origin feature/public-release
# Open PR in public repo
```

## Automated Sync Process

### Public → Staging (Automatic)

When a PR is merged in the **public** repo:
1. GitHub Action triggers in public repo
2. Staging repo receives notification
3. Daily sync job (2 AM UTC) pulls public changes
4. Auto-creates PR in staging for review
5. Members review and merge

**Manual trigger:**
- Go to staging repo → Actions → "Sync from Public to Staging" → Run workflow

### Staging → Public (Manual)

Publishing from staging to public is **always manual** to ensure:
- No sensitive information leaks
- Content is ready for public consumption
- Proper review and approval

## Handling Sync Conflicts

If the automated sync encounters conflicts:
1. GitHub Action creates an issue in staging repo
2. Follow the resolution steps in the issue
3. Manually merge and resolve conflicts
4. Create PR for review

## Best Practices

### ✅ Do:
- Work in staging for internal discussions
- Review auto-sync PRs promptly
- Carefully review before publishing to public
- Use descriptive commit messages
- Link related issues/PRs between repos

### ❌ Don't:
- Commit sensitive information to public repo
- Ignore sync conflict notifications
- Manually edit both repos without syncing
- Force push to main branches
- Bypass PR review process

## Repository Structure

Both repositories share the same structure:
```
├── .github/
│   ├── workflows/          # GitHub Actions
│   ├── ISSUE_TEMPLATE/     # Issue templates
│   └── Committees/         # Committee charters
├── Foundation/             # Core documents
├── Proposals/              # Community proposals
├── Systems/                # Technical documentation
├── Frequently-Asked-Questions/
└── README.md
```

## Related Resources

- [AMLC Programming Repo](https://github.com/amlcoftherockies/amlc-programming) - Event and talk proposals
- [AMLC Website Repo](https://github.com/amlcoftherockies/amlcoftherockies.org) - Official website source
- [Community Proposals Process](/Foundation/proposals.md)
- [Contributing Guidelines](/README.md)

## Questions?

- **Discord**: [AMLC of the Rockies Discord](https://discord.gg/XsHBtnBH)
- **Email**: leadership@amlcoftherockies.org
- **Issues**: Open an issue in the appropriate repo

