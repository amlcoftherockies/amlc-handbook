# PR Approval Flow Diagram

## Visual Flow

```
┌─────────────────────────────────────────────────────────────┐
│                    Someone Creates a PR                      │
└────────────────────────┬────────────────────────────────────┘
                         │
                         ▼
              ┌──────────────────────┐
              │  Who is the author?  │
              └──────────┬───────────┘
                         │
         ┌───────────────┼───────────────┐
         │               │               │
         ▼               ▼               ▼
┌────────────────┐ ┌──────────┐ ┌──────────────┐
│  Organizer     │ │ Reviewer │ │  External    │
│ (amlc-         │ │ (amlc-   │ │ Contributor  │
│  organizers)   │ │ reviewers)│ │              │
└────────┬───────┘ └─────┬────┘ └──────┬───────┘
         │               │              │
         ▼               ▼              ▼
┌────────────────┐ ┌──────────┐ ┌──────────────┐
│ Can self-      │ │ CANNOT   │ │ CANNOT       │
│ approve ✅     │ │ self-    │ │ approve      │
│                │ │ approve  │ │              │
│ Bypass enabled │ │ ❌       │ │ ❌           │
└────────┬───────┘ └─────┬────┘ └──────┬───────┘
         │               │              │
         │               ▼              │
         │      ┌────────────────┐     │
         │      │ Needs approval │     │
         │      │ from:          │     │
         │      │ • Another      │     │
         │      │   reviewer OR  │     │
         │      │ • An organizer │     │
         │      └────────┬───────┘     │
         │               │              │
         └───────────────┼──────────────┘
                         │
                         ▼
              ┌──────────────────────┐
              │ Workflow validates   │
              │ approval rules       │
              └──────────┬───────────┘
                         │
         ┌───────────────┼───────────────┐
         │                               │
         ▼                               ▼
┌────────────────┐              ┌────────────────┐
│ ✅ Valid       │              │ ❌ Invalid     │
│                │              │                │
│ • Organizer    │              │ • Reviewer     │
│   self-        │              │   self-        │
│   approved     │              │   approved     │
│                │              │                │
│ • Reviewer got │              │ • No approval  │
│   external     │              │   yet          │
│   approval     │              │                │
│                │              │ • Wrong        │
│ • External got │              │   approver     │
│   approval     │              │                │
└────────┬───────┘              └────────┬───────┘
         │                               │
         ▼                               ▼
┌────────────────┐              ┌────────────────┐
│ ✅ Can merge   │              │ ❌ Cannot      │
│                │              │    merge       │
│ All checks     │              │                │
│ passed         │              │ Workflow posts │
│                │              │ comment with   │
│                │              │ instructions   │
└────────────────┘              └────────────────┘
```

## Authority Hierarchy

```
┌─────────────────────────────────────────────┐
│         🔑 amlc-organizers                  │
│         (Highest Authority)                 │
│                                             │
│  • Can self-approve                         │
│  • Can bypass branch protection             │
│  • Full repository control                  │
│  • Leadership team                          │
└─────────────────┬───────────────────────────┘
                  │
                  │ Can approve PRs from ↓
                  │
┌─────────────────▼───────────────────────────┐
│         👥 amlc-reviewers                   │
│         (Trusted Reviewers)                 │
│                                             │
│  • Cannot self-approve                      │
│  • Need peer review                         │
│  • Can review others' PRs                   │
│  • Trusted community members                │
└─────────────────┬───────────────────────────┘
                  │
                  │ Can approve PRs from ↓
                  │
┌─────────────────▼───────────────────────────┐
│         🌍 External Contributors            │
│         (Community Members)                 │
│                                             │
│  • Cannot approve PRs                       │
│  • Need reviewer/organizer approval         │
│  • Can submit PRs via fork                  │
│  • Welcome to contribute!                   │
└─────────────────────────────────────────────┘
```

## Example Scenarios

### Scenario 1: Organizer Updates Documentation
```
1. Organizer creates PR
2. Organizer reviews own PR
3. Organizer approves own PR ✅
4. Workflow: "Author is organizer - can self-approve" ✅
5. PR merges successfully ✅
```

### Scenario 2: Reviewer Updates Documentation
```
1. Reviewer creates PR
2. Reviewer tries to approve own PR
3. Workflow: "Reviewers cannot self-approve" ❌
4. Workflow posts comment with instructions
5. Another reviewer (or organizer) approves ✅
6. PR merges successfully ✅
```

### Scenario 3: External Contributor Submits Fix
```
1. External contributor forks repo
2. External contributor creates PR
3. Reviewer or organizer reviews PR
4. Reviewer/organizer approves ✅
5. Workflow validates approval ✅
6. PR merges successfully ✅
```

### Scenario 4: Reviewer Tries to Self-Approve (Blocked)
```
1. Reviewer creates PR
2. Reviewer approves own PR
3. Workflow checks: "Is author in organizers?" → No
4. Workflow checks: "Is author in reviewers?" → Yes
5. Workflow checks: "Has external approval?" → No
6. Workflow fails ❌
7. Comment posted: "Reviewers cannot self-approve"
8. PR cannot merge until external approval ⏳
```

## Quick Decision Tree

```
Is the PR author in amlc-organizers?
│
├─ YES → ✅ Can self-approve and merge
│
└─ NO → Is the PR author in amlc-reviewers?
         │
         ├─ YES → ❌ Cannot self-approve
         │         ✅ Needs approval from another person
         │
         └─ NO → ❌ Cannot approve
                  ✅ Needs approval from reviewer or organizer
```

## Status Check Messages

The workflow will post these messages:

### ✅ Success Messages
- "✅ Author is an organizer and can self-approve their PR"
- "✅ PR has approval from someone other than the author"
- "✅ PR has required approval"

### ❌ Failure Messages
- "❌ Reviewers cannot self-approve. Please get approval from another reviewer or an organizer."
- "⏳ Waiting for approval from another reviewer or an organizer"
- "⏳ Waiting for approval from a reviewer or organizer"

---

See [BRANCH_PROTECTION.md](BRANCH_PROTECTION.md) for complete documentation.

