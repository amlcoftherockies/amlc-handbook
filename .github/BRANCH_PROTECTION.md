# Branch Protection Configuration

This document describes the branch protection rules for the AMLC Handbook repository.

## Protection Rules for `main` Branch

### Approval Requirements

- **amlc-organizers**: Can self-approve their own PRs (highest authority, 1 approval required, can be from themselves)
- **amlc-reviewers**: Must have approval from someone else - either another reviewer or an organizer (cannot self-approve)

### How to Configure in GitHub

Since GitHub doesn't natively support different approval rules for different teams on the same branch, we use a combination of:

1. **CODEOWNERS** - Defines who reviews what
2. **Branch Protection Rules** - Enforces approval requirements
3. **GitHub Actions** - Validates approval rules

## GitHub Settings Configuration

### Step 1: Create Teams

Make sure these teams exist in your GitHub organization:

1. **amlc-reviewers** - Can self-approve
2. **amlc-organizers** - Cannot self-approve

### Step 2: Configure Branch Protection

Go to: `Settings` → `Branches` → `Branch protection rules` → `main`

**Required Settings:**

✅ **Require a pull request before merging**
- ✅ Require approvals: **1**
- ❌ Dismiss stale pull request approvals when new commits are pushed (optional)
- ✅ Require review from Code Owners
- ❌ Restrict who can dismiss pull request reviews (optional)
- ✅ Allow specified actors to bypass required pull requests
  - Add: `amlc-organizers` team (they can self-approve)

✅ **Require status checks to pass before merging**
- ✅ Require branches to be up to date before merging
- Required checks:
  - `validate-approvals` (from GitHub Actions)

✅ **Require conversation resolution before merging**

✅ **Do not allow bypassing the above settings**

### Step 3: Team Permissions

**amlc-organizers team:**
- Repository access: Write or Admin
- Can bypass pull request requirements: Yes (for self-approval)

**amlc-reviewers team:**
- Repository access: Write
- Can bypass pull request requirements: No

## How It Works

### For amlc-organizers (Highest Authority):
1. Create a PR
2. Can approve their own PR (bypass enabled)
3. Can merge after 1 approval (their own)
4. Have full authority over the repository

### For amlc-reviewers:
1. Create a PR
2. Cannot approve their own PR
3. Must get approval from:
   - Another amlc-reviewers member, OR
   - An amlc-organizers member
4. Can merge after 1 external approval

## Validation Workflow

The `.github/workflows/validate-pr-approvals.yml` workflow automatically checks:
- If PR author is in amlc-reviewers (but NOT in amlc-organizers)
- If so, ensures approval is from someone other than the author
- Blocks merge if reviewer tries to self-approve
- Allows organizers to self-approve (they have bypass permissions)

## Manual Override

In emergency situations, repository admins can:
1. Temporarily disable branch protection
2. Merge critical fixes
3. Re-enable branch protection

**Note**: All overrides should be documented in an issue.

## Testing the Configuration

### Test Case 1: amlc-organizers Self-Approval (Should Work)
1. Member of amlc-organizers creates PR
2. Same member approves their own PR
3. ✅ Should be able to merge (they have bypass permissions)

### Test Case 2: amlc-reviewers Self-Approval (Should Fail)
1. Member of amlc-reviewers creates PR
2. Same member tries to approve their own PR
3. ❌ Should NOT be able to merge
4. Another person (reviewer or organizer) approves
5. ✅ Should be able to merge

## Troubleshooting

### "Required reviews not met"
- Check if PR author is in amlc-reviewers (not organizers)
- Ensure approval is from a different person
- Organizers can self-approve

### "Status check failed: validate-approvals"
- Check workflow logs in Actions tab
- Verify team memberships
- Ensure reviewers aren't trying to self-approve

### "Cannot merge due to branch protection"
- Verify all required checks have passed
- Ensure conversations are resolved
- Check that required approvals are present

## Questions?

Contact leadership@amlcoftherockies.org or ask in Discord.

