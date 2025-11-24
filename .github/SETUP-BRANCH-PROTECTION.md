# Setting Up Branch Protection - Quick Guide

Follow these steps to configure the approval rules for the AMLC Handbook repository.

## Prerequisites

You need **Admin** access to the repository to configure these settings.

## Step 1: Create GitHub Teams

1. Go to your organization: https://github.com/orgs/amlcoftherockies/teams
2. Create two teams if they don't exist:

### Team: amlc-organizers
- **Name**: amlc-organizers
- **Description**: AMLC Organizers - can self-approve PRs
- **Visibility**: Visible (or Secret if you prefer)
- **Repository Access**: 
  - Add `amlc-handbook` with **Write** or **Admin** permission

### Team: amlc-reviewers
- **Name**: amlc-reviewers
- **Description**: AMLC Reviewers - need external approval for PRs
- **Visibility**: Visible (or Secret if you prefer)
- **Repository Access**: 
  - Add `amlc-handbook` with **Write** permission

## Step 2: Add Team Members

### Add Organizers
1. Go to https://github.com/orgs/amlcoftherockies/teams/amlc-organizers
2. Click "Members" tab
3. Click "Add a member"
4. Add all organizers

### Add Reviewers
1. Go to https://github.com/orgs/amlcoftherockies/teams/amlc-reviewers
2. Click "Members" tab
3. Click "Add a member"
4. Add all reviewers

**Note**: A person can be in both teams. If someone is in both, they'll have organizer privileges (can self-approve).

## Step 3: Configure Branch Protection

1. Go to repository settings: https://github.com/amlcoftherockies/amlc-handbook/settings
2. Click "Branches" in the left sidebar
3. Click "Add branch protection rule" (or edit existing rule for `main`)

### Configure the following settings:

**Branch name pattern**: `main`

#### Protect matching branches

✅ **Require a pull request before merging**
- ✅ Require approvals: **1**
- ✅ Require review from Code Owners
- ✅ Allow specified actors to bypass required pull requests
  - Click "Add" and select: `amlc-organizers` team

✅ **Require status checks to pass before merging**
- ✅ Require branches to be up to date before merging
- Search for and add: `validate-approvals` (this will appear after the first workflow run)

✅ **Require conversation resolution before merging**

✅ **Do not allow bypassing the above settings**
- Leave this UNCHECKED (so organizers can bypass)

#### Click "Create" or "Save changes"

## Step 4: Test the Configuration

### Test 1: Organizer Self-Approval (Should Work)
1. Have an organizer create a test PR
2. Same organizer approves their own PR
3. Verify they can merge ✅

### Test 2: Reviewer Self-Approval (Should Fail)
1. Have a reviewer create a test PR
2. Same reviewer tries to approve their own PR
3. Verify the workflow blocks the merge ❌
4. Have another person approve
5. Verify they can now merge ✅

## Step 5: Update CODEOWNERS (Optional)

If you want to specify which team reviews by default:

Edit `.github/CODEOWNERS`:
```
# Default reviewers for all files
* @amlcoftherockies/amlc-reviewers

# Organizers review specific sections
/Foundation/ @amlcoftherockies/amlc-organizers
/.github/ @amlcoftherockies/amlc-organizers
```

## How It Works

### For Organizers (Highest Authority):
- ✅ Can create PRs
- ✅ Can approve their own PRs
- ✅ Can merge after self-approval
- ✅ Can bypass branch protection if needed

### For Reviewers:
- ✅ Can create PRs
- ❌ Cannot approve their own PRs
- ✅ Can merge after getting approval from:
  - Another reviewer, OR
  - An organizer
- ❌ Cannot bypass branch protection

### For External Contributors:
- ✅ Can create PRs (via fork)
- ❌ Cannot approve PRs
- ⏳ Must wait for reviewer or organizer approval

## Troubleshooting

### Workflow not running?
- Make sure the workflow file is committed to `main` branch
- Check Actions tab for any errors
- Verify GitHub Actions are enabled for the repository

### "validate-approvals" check not appearing?
- The check will appear after the first PR is created
- You may need to create a test PR first
- Then add it to required status checks

### Team not showing up in bypass list?
- Make sure the team has access to the repository
- Refresh the page
- Try typing the team name manually: `amlcoftherockies/amlc-organizers`

### Someone can't merge even with approval?
- Check if all required status checks passed
- Verify conversations are resolved
- Check if branch is up to date with main

## Questions?

Contact leadership@amlcoftherockies.org or ask in Discord.

---

See [BRANCH_PROTECTION.md](BRANCH_PROTECTION.md) for detailed documentation.

