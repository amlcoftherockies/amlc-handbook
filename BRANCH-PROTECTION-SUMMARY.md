# Branch Protection Setup Summary

## ✅ What Was Created

I've set up a branch protection system where:

### 🔑 **amlc-organizers** (Highest Authority)
- ✅ Can self-approve their own PRs
- ✅ Can merge after 1 approval (their own)
- ✅ Have bypass permissions for branch protection
- ✅ Full authority over the repository

### 👥 **amlc-reviewers** (Standard Reviewers)
- ❌ Cannot self-approve their own PRs
- ✅ Must get approval from another person (reviewer or organizer)
- ✅ Can merge after 1 external approval
- ❌ Cannot bypass branch protection

## 📁 Files Created

1. **`.github/BRANCH_PROTECTION.md`**
   - Comprehensive documentation of the branch protection rules
   - Explains how the system works
   - Includes troubleshooting guide

2. **`.github/workflows/validate-pr-approvals.yml`**
   - GitHub Actions workflow that validates approval rules
   - Checks if PR author is organizer or reviewer
   - Blocks reviewers from self-approving
   - Allows organizers to self-approve
   - Posts helpful comments on PRs

3. **`.github/SETUP-BRANCH-PROTECTION.md`**
   - Step-by-step setup guide
   - Instructions for creating teams
   - How to configure branch protection in GitHub UI
   - Testing procedures

4. **`BRANCH-PROTECTION-SUMMARY.md`** (this file)
   - Quick reference summary

## 🚀 Next Steps - Action Required!

You need to configure this in GitHub (requires Admin access):

### 1. Create Teams (5 minutes)
```
Go to: https://github.com/orgs/amlcoftherockies/teams

Create:
- amlc-organizers (can self-approve)
- amlc-reviewers (need external approval)

Add members to each team
```

### 2. Configure Branch Protection (5 minutes)
```
Go to: https://github.com/amlcoftherockies/amlc-handbook/settings/branches

Add rule for 'main' branch:
- Require 1 approval
- Require review from Code Owners
- Allow amlc-organizers to bypass
- Require status check: validate-approvals
```

### 3. Test It (5 minutes)
```
Test 1: Organizer creates PR → self-approves → should merge ✅
Test 2: Reviewer creates PR → self-approves → should fail ❌
Test 3: Reviewer gets external approval → should merge ✅
```

## 📖 Detailed Instructions

See **`.github/SETUP-BRANCH-PROTECTION.md`** for complete step-by-step instructions.

## 🔍 How It Works

### The Workflow
1. Someone creates a PR
2. GitHub Actions workflow runs
3. Workflow checks:
   - Is author in amlc-organizers? → Allow self-approval ✅
   - Is author in amlc-reviewers? → Require external approval ⏳
   - External contributor? → Require approval from reviewer/organizer ⏳
4. If rules violated, workflow fails and posts comment
5. If rules satisfied, workflow passes and PR can merge

### The Teams
- **amlc-organizers**: Leadership team with full authority
- **amlc-reviewers**: Trusted reviewers who need peer review

### The Protection
- Branch protection enforces 1 approval minimum
- Organizers can bypass (self-approve)
- Reviewers cannot bypass (need external approval)
- Workflow validates the rules automatically

## 🎯 Benefits

### For Organizers
- ✅ Fast iteration - can self-approve urgent fixes
- ✅ Full control when needed
- ✅ Still get automatic review requests

### For Reviewers
- ✅ Trusted to review others' work
- ✅ Peer review ensures quality
- ✅ Prevents accidental self-merges

### For the Community
- ✅ Clear authority structure
- ✅ Quality control through reviews
- ✅ Transparent process
- ✅ Documented in code

## 📞 Questions?

- **Setup Help**: See `.github/SETUP-BRANCH-PROTECTION.md`
- **How It Works**: See `.github/BRANCH_PROTECTION.md`
- **Issues**: Contact leadership@amlcoftherockies.org

---

## Quick Reference

| Role | Can Self-Approve? | Needs External Approval? | Can Bypass? |
|------|-------------------|-------------------------|-------------|
| **amlc-organizers** | ✅ Yes | ❌ No | ✅ Yes |
| **amlc-reviewers** | ❌ No | ✅ Yes | ❌ No |
| **External** | ❌ No | ✅ Yes | ❌ No |

---

**Created**: November 24, 2024  
**Status**: Configuration files ready - GitHub setup required

