# CEP-[NUMBER]: New Repository - [Repository Name]

**Status**: Proposed  
**Author**: [Your Name] (@github-username)  
**Created**: [YYYY-MM-DD]  
**Type**: Infrastructure  
**Requires Registry Update**: Yes

---

## Summary

<!-- One paragraph: What repository are you proposing and why? -->

We propose creating a new repository called `amlc-[name]` to [brief purpose].

## Proposed Repository Details

**Name**: `amlc-[repository-name]`  
**URL**: `https://github.com/amlcoftherockies/amlc-[repository-name]`  
**Visibility**: [ ] Public  [ ] Private  
**Category**: [ ] Governance  [ ] Public Presence  [ ] Programming  [ ] Infrastructure  [ ] Projects

### Purpose

<!-- What problem does this repository solve? What gap does it fill? -->

### Scope

**What will be in this repository:**
- 
- 
- 

**What will NOT be in this repository:**
- 
- 
- 

### Relationship to Existing Repositories

<!-- How does this relate to amlc-handbook, amlc-programming, amlcoftherockies.org, etc.? -->
<!-- Why can't this content live in an existing repository? -->

### Maintainers

**Primary Maintainer Team**: [team-name]  
**Additional Teams**: [team-name, team-name]

**Responsibilities**:
- 
- 
- 

### Initial Structure

```
amlc-[repository-name]/
├── README.md
├── LICENSE
├── .github/
│   ├── CODEOWNERS
│   ├── workflows/
│   │   └── [workflow-name].yml
│   └── ISSUE_TEMPLATE/
├── [directory-1]/
├── [directory-2]/
└── [other-files]
```

### Technology Stack (if applicable)

<!-- What languages, frameworks, or tools will be used? -->

- **Language**: 
- **Framework**: 
- **Dependencies**: 
- **Hosting**: 

## Motivation

### Why Now?

<!-- Why is this repository needed now? What's the urgency or opportunity? -->

### Why a Separate Repository?

<!-- Why not a directory in an existing repo? Be specific. -->

**Reasons for separate repository**:
- [ ] Different access controls needed (public vs. private)
- [ ] Distinct project lifecycle
- [ ] Separate issue tracking required
- [ ] Different maintainer team
- [ ] Different deployment/release cycle
- [ ] Other: [explain]

### Alternatives Considered

<!-- What other approaches did you consider? Why didn't they work? -->

1. **Alternative 1**: [Description]
   - **Pros**: 
   - **Cons**: 
   - **Why not chosen**: 

2. **Alternative 2**: [Description]
   - **Pros**: 
   - **Cons**: 
   - **Why not chosen**: 

## Impact Assessment

### Time, Talent, and Treasure

#### 🕐 Time
**Setup Time**: [hours/days to set up]  
**Ongoing Maintenance**: [hours/week or hours/month]

#### 🎨 Talent
**Skills Required**:
- 
- 

**Who will provide these skills**:
- 

#### 💰 Treasure
**Initial Costs**: $[amount] for [what]  
**Ongoing Costs**: $[amount/month] for [what]  
**Funding Source**: [how will this be funded]

### Community Impact

**Who benefits**:
- 
- 

**How they benefit**:
- 
- 

## Implementation Plan

### Phase 1: Repository Creation (Week 1)
- [ ] CEP approved and merged
- [ ] Organizer creates repository in GitHub
- [ ] Configure repository settings
- [ ] Add teams and permissions
- [ ] Set up branch protection

### Phase 2: Initial Setup (Week 2)
- [ ] Create initial README
- [ ] Add LICENSE and CODEOWNERS
- [ ] Set up basic structure
- [ ] Configure GitHub Actions (if needed)
- [ ] Update handbook registry

### Phase 3: Content Migration/Creation (Week 3-4)
- [ ] [Specific task]
- [ ] [Specific task]
- [ ] [Specific task]

### Phase 4: Launch (Week 5)
- [ ] Announce to community
- [ ] Update documentation
- [ ] Train maintainers
- [ ] Monitor and iterate

## Success Metrics

**How will we know this repository is successful?**

- [ ] [Metric 1]: [Target]
- [ ] [Metric 2]: [Target]
- [ ] [Metric 3]: [Target]

**Review Timeline**: [When will we review if this is working?]

## Required Updates

### Repository Registry

**This CEP requires updating `Systems/repositories.md`**

Add the following entry to the appropriate category:

```markdown
#### amlc-[repository-name]
- **URL**: https://github.com/amlcoftherockies/amlc-[repository-name]
- **Visibility**: Public/Private
- **Purpose**: [One-line description]
- **Maintainers**: [team-name]
- **Status**: Proposed (pending approval)
- **Created**: 2024
- **Related Docs**: [Link to this CEP]
```

### Other Documentation

**Files that need updates**:
- [ ] `README.md` - Repository ecosystem section
- [ ] `Systems/README.md` - Related systems section
- [ ] [Other files]

## Open Questions

<!-- What questions need to be answered before this can be approved? -->

1. 
2. 
3. 

## Discussion

<!-- This section will be filled in during the PR review process -->

---

## Checklist for Submitter

Before submitting this CEP:

- [ ] I've filled out all required sections
- [ ] I've updated `Systems/repositories.md` in this same PR
- [ ] I've considered alternatives and explained why they don't work
- [ ] I've identified maintainers who have agreed to maintain this
- [ ] I've estimated the time, talent, and treasure required
- [ ] I've defined success metrics
- [ ] I've read the [Repository Proposal Process](/Systems/repositories.md#proposing-a-new-repository)

## Checklist for Organizers

After approval:

- [ ] Repository created in GitHub
- [ ] Settings configured (visibility, features, etc.)
- [ ] Teams added with correct permissions
- [ ] Branch protection enabled
- [ ] Initial commit made (README, LICENSE, CODEOWNERS)
- [ ] Registry updated with "Active" status
- [ ] Community notified

