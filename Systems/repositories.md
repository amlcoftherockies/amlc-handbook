# AMLC Repository Registry

**Official registry of all AMLC of the Rockies GitHub repositories.**

This document serves as the **single source of truth** for all AMLC repositories. Any new repository must be documented here as part of the creation process.

## 📚 Active Repositories

### Core Infrastructure

#### amlc-handbook
- **URL**: https://github.com/amlcoftherockies/amlc-handbook
- **Visibility**: Public (including all branches - staging is also public!)
- **Purpose**: Official public record of community governance, policies, proposals, and decision history
- **Branches**:
  - `main` - Official, approved content
  - `staging` - Work-in-progress (public!)
- **Maintainers**: amlc-organizers team
- **Status**: Active
- **Created**: 2024
- **Related Docs**: [Transparency Commitment](/Foundation/transparency.md), [Staging Branch Workflow](/Systems/staging-branch-workflow.md), [Transparency & Privacy](/Foundation/transparency-and-privacy.md)

#### amlcoftherockies.org
- **URL**: https://github.com/amlcoftherockies/amlcoftherockies.org
- **Visibility**: Public
- **Purpose**: Official website source code - public-facing showcase of the community
- **Live Site**: https://amlcoftherockies.org
- **Maintainers**: amlc-organizers team
- **Status**: Active
- **Created**: 2024
- **Tech Stack**: [Add details from repo]
- **Related Docs**: [Community Offerings](/Foundation/community-offerings.md)

### Programming & Events

#### amlc-programming
- **URL**: https://github.com/amlcoftherockies/amlc-programming
- **Visibility**: Public
- **Purpose**: Event proposals, talks, workshops, and activity planning
- **Maintainers**: amlc-organizers team, programming committee
- **Status**: Active
- **Created**: 2024
- **Related Docs**: [Proposals Process](/Foundation/proposals.md)

## 📋 Repository Categories

### Category: Governance
Repositories that manage community governance, policies, and decision-making.
- amlc-handbook (with `main` and `staging` branches)

### Category: Public Presence
Repositories that represent AMLC to the public.
- amlcoftherockies.org

### Category: Programming
Repositories that manage events, talks, and activities.
- amlc-programming

### Category: Infrastructure
Repositories that provide technical infrastructure or tools.
- [None currently]

### Category: Projects
Community-led projects and initiatives.
- [None currently]

## 🆕 Proposing a New Repository

### When to Create a New Repository

Create a new repository when:
- ✅ The content doesn't fit in existing repositories
- ✅ It requires different access controls (public vs. private)
- ✅ It's a distinct project or initiative with its own lifecycle
- ✅ It needs separate issue tracking and project management
- ✅ It has different maintainers or governance

**Don't create a new repository when:**
- ❌ A directory in an existing repo would suffice
- ❌ It's temporary or experimental (use a branch instead)
- ❌ It duplicates existing functionality
- ❌ It's just for personal work (use your own account)

### How to Propose a New Repository

**Required Process**: All new repositories must go through the CEP (Community Enhancement Proposal) process.

1. **Submit a CEP** using the [CEP template](/templates/cep-template.md)
2. **Include in your proposal**:
   - Repository name (must start with `amlc-`)
   - Purpose and scope
   - Visibility (public or private) and justification
   - Maintainer team(s)
   - Relationship to existing repositories
   - Initial structure and documentation plan
   - Success metrics

3. **Create a Pull Request** that includes:
   - Your CEP in `Proposals/CEP-[NUMBER]-new-repo-[name].md`
   - **Update to this file** (`Systems/repositories.md`) adding the new repo to the registry
   - Any related documentation updates

4. **Get Approval** from amlc-organizers

5. **Repository Creation** happens after PR is merged (see below)

### Repository Proposal Template

Use this template in your CEP:

```markdown
## Proposed Repository

**Name**: amlc-[your-repo-name]
**Visibility**: Public / Private
**Category**: Governance / Public Presence / Programming / Infrastructure / Projects

### Purpose
[What problem does this repository solve?]

### Scope
[What will be in this repository? What won't be?]

### Maintainers
[Which team(s) will maintain this?]

### Relationship to Existing Repos
[How does this relate to amlc-handbook, amlc-programming, etc.?]

### Initial Structure
```
repo-name/
├── README.md
├── .github/
│   └── workflows/
├── [other directories]
```

### Success Metrics
[How will we know this repository is successful?]
```

## 🚀 Repository Creation Process

### After CEP Approval

Once your CEP is approved and merged:

1. **Organizer creates the repository** in GitHub
   - Repository name must match the approved CEP
   - Visibility must match the approved CEP
   - Initial README must reference the CEP

2. **Configure repository settings**:
   - Add description from CEP
   - Configure branch protection (see [Branch Protection Setup](/.github/SETUP-BRANCH-PROTECTION.md))
   - Add appropriate teams with correct permissions
   - Enable/disable features (Issues, Wiki, Projects, etc.)

3. **Initial commit** must include:
   - README.md with purpose and link to CEP
   - LICENSE (if applicable)
   - .github/CODEOWNERS
   - Basic structure from CEP

4. **Update handbook** (if not already done in CEP PR):
   - Add to this registry (`Systems/repositories.md`)
   - Update README.md repository ecosystem section
   - Update any related documentation

### Automated Repository Creation (Future)

**Note**: Currently, repositories must be created manually by organizers. We're exploring automation options.

**Potential future workflow**:
- CEP PR includes a special marker (e.g., `create-repo: true` in frontmatter)
- GitHub Action detects the marker when PR is merged
- Action creates repository using GitHub API
- Action applies settings from CEP
- Action posts comment with repository URL

**Challenges**:
- Requires GitHub App or PAT with org-level permissions
- Security considerations for automated repo creation
- Need approval workflow before creation

**Status**: Under consideration - see [Issue #TBD]

## 📊 Repository Health Checks

### Required for All Repositories

Every AMLC repository must have:
- ✅ README.md with clear purpose
- ✅ LICENSE file (if applicable)
- ✅ .github/CODEOWNERS file
- ✅ Entry in this registry
- ✅ Assigned maintainer team(s)
- ✅ Branch protection on main branch

### Quarterly Review

Organizers review all repositories quarterly to ensure:
- Active maintenance
- Up-to-date documentation
- Proper access controls
- Alignment with community goals

## 🗄️ Archived Repositories

When a repository is no longer needed:

1. **Submit a CEP** to archive the repository
2. **Document the reason** for archiving
3. **Preserve the history** (don't delete)
4. **Update this registry** moving it to "Archived" section
5. **Archive in GitHub** (makes it read-only)

### Archived

#### amlc-handbook-staging (Archived November 2024)
- **URL**: https://github.com/amlcoftherockies/amlc-handbook-staging
- **Visibility**: Private (archived)
- **Purpose**: Was used for internal discussions and work-in-progress content
- **Archived Reason**: Moved to single-repo workflow with public staging branch for full transparency
- **Archived Date**: November 2024
- **Replacement**: Use `staging` branch in amlc-handbook repository
- **Related Docs**: [Two-Repo Workflow](/Systems/two-repo-workflow.md) (historical), [Staging Branch Workflow](/Systems/staging-branch-workflow.md) (current)

## 📞 Questions?

- **New repository proposal**: Submit a CEP
- **Repository access**: Contact leadership@amlcoftherockies.org
- **Technical issues**: Open an issue in the relevant repository
- **Registry updates**: Submit a PR to this file

---

**Last Updated**: November 24, 2024  
**Maintained By**: amlc-organizers team  
**Review Schedule**: Quarterly

