# Proposals

The AMLC of the Rockies is a living community—always evolving through shared ideas and contributions. To propose changes that enhance the community itself (e.g., structure, governance, initiatives), submit a pull request to the `Proposals` directory in this repository.

**This is how we build our community history.** Every proposal, discussion, and decision becomes part of our permanent, public record - demonstrating our commitment to transparency and accountability.

For other types of proposals—such as talks you'd like to give, topics you’d like to see covered, or activities you’d like to recommend—please use the designated repositories for events and programming. This allows us to keep proposals organized and routed to the appropriate working groups.

This document outlines:

- What types of proposals belong here
- Where to submit proposals for events, activities, and workshops
- How to write and submit a Pull Request for community enhancements
- How proposals become part of our community history

## Do I have to use the Proposal Process?

**Yes, for significant changes.** And here's why it matters:

Submitting proposals through the official process:
- ✅ **Creates a permanent record** of what was proposed and why
- ✅ **Preserves the discussion** that led to decisions (in PR comments)
- ✅ **Documents the reasoning** behind approvals or rejections
- ✅ **Builds institutional memory** so future members understand our journey
- ✅ **Demonstrates transparency** - anyone can see how decisions are made
- ✅ **Enables accountability** - we can review past decisions and learn from them

Formal proposals are required for:

    Community-wide changes (structure, process, or direction)

    New initiatives that require resources or coordination

    Changes that could be controversial

    Anything that would benefit from broad input or long-term tracking

For smaller efforts, you don’t need to go overboard—proposals should be lightweight and approachable. Think of them as a conversation starter with structure

## Why would I want to use the Proposal Process?
The proposal process isn’t just a formality—it’s how we:

    Make decisions transparent and collaborative

    Invite feedback and contributors early

    Track the evolution of community ideas

    Avoid duplicating effort by surfacing related initiatives

    Build trust through shared understanding

We’re inspired by other open communities like Python’s PEPs, Rust’s RFCs, and Kubernetes KEPs, but we aim to keep things lightweight and inclusive.

## Proposals as Community History

**Every proposal becomes part of our permanent record**, whether it's approved or not:

### What Gets Preserved
- ✅ **The proposal itself** - What was suggested and why
- ✅ **The discussion** - Comments, questions, and feedback in the PR
- ✅ **The decision** - Whether it was approved, rejected, or modified
- ✅ **The reasoning** - Why the community made the choice it did
- ✅ **The timeline** - When things happened and who was involved

### Why This Matters
- **Future members** can understand how we got here
- **Current members** can reference past decisions
- **The community** can learn from what worked and what didn't
- **Transparency** is demonstrated through our permanent git history
- **Accountability** is built into the process

### Even Rejected Proposals Have Value
A rejected proposal isn't a failure - it's part of our learning:
- Shows what was considered and why it wasn't the right fit
- Prevents others from proposing the same thing without context
- Documents the community's thinking at that point in time
- May inspire future proposals that address the concerns

**This is our commitment to transparency**: If it affects the community, it's documented. If it's documented, it's public and permanent.

## Where should I put my proposal?

### Community Enhancement Proposals (CEPs)
Submit a Pull Request to the `Proposals/` directory in this repository.

**Types of CEPs**:
- Policy changes and governance updates
- New community initiatives or programs
- Changes to community structure
- **New repository proposals** (see special requirements below)
- Process improvements
- Major community decisions

### New Repository Proposals
**Special requirements** for proposing a new AMLC repository:

1. Use the [New Repository CEP Template](/templates/new-repo-cep-template.md)
2. **Must also update** [Systems/repositories.md](/Systems/repositories.md) in the same PR
3. Include detailed justification for why a new repo is needed
4. See [Repository Proposal Process](/Systems/repositories.md#proposing-a-new-repository)

**Note**: A GitHub Action will automatically check that repository proposals include the required registry update.

### Talks or Activity Proposals
These belong in the [amlc-programming repository](https://github.com/amlcoftherockies/amlc-programming).

**Not sure where something goes?** Ask in [Discord](https://discord.gg/XsHBtnBH), [email leadership](mailto:leadership@amlcoftherockies.org), or open an issue—we'll help guide it to the right place.


## What will it take for proposals to feel successful?

Success for us means:

    Proposals are clear, collaborative, and actionable

    Community members feel welcome to contribute and improve them

    Ideas move forward with alignment and shared ownership

    There's a searchable, browsable history of how things evolved

As we grow, we’ll iterate on this process. Like everything in AMLC, it’s open to improvement.


## My question isn’t answered here!

We’re still refining this process! If you have a question, reach out to the organizers,maintainers, other leaders, or open an issue. Want to improve the proposal process itself? Great! Submit a proposal for that too!

## Community Enhancement Proposals

Community enhancement proposals are submitted directly to [AMLC Handbook repository](https://github.com/amlcoftherockies/amlc-handbook).
We decided on this structure because we believe these community enhancements will make their way into our community's core, and therefore the lineage of these enhancements makes sense to document within the handbook repo. The enhancement process was inspired by the [Kubernetes community enhancement process](https://github.com/kubernetes/enhancements/tree/master/keps).

### How to Submit a CEP

1. **Choose the right template**:
   - **General CEP**: [templates/cep-template.md](/templates/cep-template.md)
   - **New Repository**: [templates/new-repo-cep-template.md](/templates/new-repo-cep-template.md)

2. **Name your file**: `Proposals/CEP-[NUMBER]-[short-title].md` (use the next available number)
   - For new repos: `Proposals/CEP-[NUMBER]-new-repo-[name].md`

3. **Fill it out**: Be clear and specific about what you're proposing and why

4. **For new repository proposals**: Also update [Systems/repositories.md](/Systems/repositories.md) in the same PR

5. **Submit a Pull Request**: See "How to Make a Pull Request" below
5. **Engage with feedback**: Respond to comments and refine your proposal

**Not sure how to make a PR?** See the guide below or ask in Discord!


### CEP Enhancment Approval Process 


| Step | Stage | Description |
|------|-------|-------------|
| 1️⃣ | **Submit Proposal** | Open a PR in `Proposals/`, outlining the enhancement and rationale clearly using the community template. |
| 2️⃣ | **Leadership Review** | Leadership checks for formatting, clarity, and structure—not for content approval. |
| 3️⃣ | **Community Notification** | Proposal is shared via Discord, email, or newsletter. Community members can comment and ask questions asynchronously. |
| 4️⃣ | **Town Hall Discussion** | Optional but encouraged. Synchronous call to discuss the proposal in depth. |
| 5️⃣ | **Community Vote** | Transparent voting method is used. Quorum and pass thresholds defined (e.g., 60%+ in favor with at least 5 votes). |
| 6️⃣ | **Recruit & Execute** | Work begins. Leads assigned, repos created, and proposal is merged once active execution begins. |

### CEP Story 
You’ve come up with a great idea—maybe it’s a new initiative, an improvement to how we run events, or a governance update. Rather than pitching it quietly, you take the open, community-first path:

1. **You submit a Pull Request** to the `Proposals/` directory with a clear description of the enhancement, the problem it solves, and how it helps the community.

2. **Leadership is notified**—not to approve or reject the idea, but to ensure the proposal is clear, well-structured, and easy for others to understand and engage with.

3. Once it’s tidy, **the community is notified** through Discord, email, and the other socials. Members can then review, comment, and suggest changes asynchronously.

4. If needed, the proposal moves to a **town hall discussion**, where we meet live to ask questions, clarify concerns, and explore trade-offs. In general, we will ensure we can bring CEPs to the in-person townhall and open the floor for discussion.

5. **A vote is called**. Voting is open to active community members and conducted via a transparent mechanism (e.g., GitHub reactions). If it passes quorum and majority, we move forward. (Certain topics may require a super-majority, but we will cross that path as a commmunity when we come to it)

6. **Recruitment and execution begin**—we assign organizers, spin up working groups or repos, and track progress. Once underway, the PR is merged and optionally linked to an execution plan.



## Community Event or Activity Proposals 
Currently, we are consoldiating events, workshop, and talk proposals under the [AMLC Programming Repo](https://github.com/amlcoftherockies/amlc-programming).
That repository tracks the programming efforts of the AMLC of the Rockies community, including proposed talks, workshops, meetups, and collaborative events. It serves as a transparent home for:

    Submitting and reviewing talk proposals

    Planning and documenting community events and activities

    Archiving past programming for reference and inspiration

    Coordinating support, logistics, and volunteer roles.

[The AMLC Programming Repo](https://github.com/amlcoftherockies/amlc-programming) has templates for talks, activities, and workshop proposals.  This document will provide general guidelines for what makes a succesfull proposals for these topics and the proceess for approval. 


### Submitted Talk Review and Approval 

Submit under `proposals/talks/`. See the [The AMLC Programming Repo](https://github.com/amlcoftherockies/amlc-programming) for templates and examples. 

| Step | Stage | Description |
|------|-------|-------------|
| 1️⃣ | **Submit Proposal** | Submit a PR using the talk template with a clear, concise description of your talk. |
| 2️⃣ | **Organizer Review** | AMLC organizers review the proposal for clarity, structure, and alignment with submission requirements. |
| 3️⃣ | **Community Feedback & Vote** | The proposal is shared with the broader community for comments and a simple vote to gauge interest and approval. |
| 4️⃣ | **Scheduling & Support** | If approved, the organizing team coordinates logistics, platform setup, and promotion with the speaker. |
| 5️⃣ | **Delivery & Follow-Up** | The talk is delivered! If applicable, recordings, notes, and next steps are shared in the repo. |


### Submitted Activites Review and Approval 

Submit your activity or event proposal as a **Pull Request** to the `proposals/activities/` See the [The AMLC Programming Repo](https://github.com/amlcoftherockies/amlc-programming) for templates and examples. 



| Step | Stage | Description |
|------|-------|-------------|
| 1️⃣ | **Submit Proposal** | Submit a PR using the activity template with clear goals, format, and logistics. |
| 2️⃣ | **Organizer Review** | AMLC organizers review for structure, feasibility, and completeness. |
| 3️⃣ | **Community Feedback & Vote** | Proposal is shared with the community for comments and a vote to approve scheduling and support. |
| 4️⃣ | **Scheduling & Support Planning** | Organizers coordinate logistics, assign volunteer roles, and confirm required resources. |
| 5️⃣ | **Execution & Follow-Up** | Activity is held. Notes, recordings, and lessons learned are shared where applicable. |



### Submitted Workshops Review and Approval

Submit your activity or event proposal as a **Pull Request** to the `proposals/workshops/` See the [The AMLC Programming Repo](https://github.com/amlcoftherockies/amlc-programming) for templates and examples.


| Step | Stage | Description |
|------|-------|-------------|
| 1️⃣ | **Proposal Submission** | Submit a Pull Request to `proposals/workshops/` using the official template. Include objectives, format, infra, budget, and contact info. |
| 2️⃣ | **Organizer Review** | AMLC organizers review the proposal for structure, clarity, and alignment with our values. They may request edits before moving forward. |
| 3️⃣ | **Community Feedback & Vote** | Proposal is shared with the community for discussion and a vote (e.g., GitHub reactions or form). A simple majority or predefined quorum determines approval. |
| 4️⃣ | **Scheduling & Resourcing** | Once approved, organizers help with logistics—scheduling, registration, volunteer recruitment, infrastructure requests, etc. |
| 5️⃣ | **Dry Run & Internal Feedback** | A rehearsal is held with leadership and select volunteers. This is a chance to refine delivery, catch gaps, and ensure smooth execution. |
| 6️⃣ | **Promotion & Registration** | The event is added to the community calendar. Promotional materials are shared, and registration opens. Slides, tools, and prep info are posted in advance. |
| 7️⃣ | **Workshop Delivery** | The live session is held! Organizers/volunteers assist with moderation, tech support, and capturing questions, screenshots, or issues. |
| 8️⃣ | **Follow-Up & Archive** | Workshop materials (recordings, slides, GitHub repos, retrospectives) are added to the archive. Feedback from attendees is gathered and reviewed. |

---

## How to Make a Pull Request

New to GitHub or pull requests? No problem! Here's a step-by-step guide.

### Option 1: Using GitHub's Web Interface (Easiest)

1. **Navigate to the file you want to edit** on GitHub
   - For CEPs: Go to the `Proposals/` folder
   - For handbook edits: Navigate to the file you want to change

2. **Click the pencil icon** (✏️) in the top right to edit
   - Or click "Add file" → "Create new file" to add a new proposal

3. **Make your changes** in the web editor
   - Use the template if creating a new proposal
   - Write clear, concise content

4. **Scroll down to "Propose changes"**
   - Add a brief title describing your change
   - Add a longer description if needed
   - Click "Propose changes"

5. **Create the Pull Request**
   - Review your changes
   - Click "Create pull request"
   - Fill out the PR template
   - Click "Create pull request" again

6. **Share and engage**
   - Post in Discord to let people know
   - Respond to comments and feedback
   - Make updates as needed

### Option 2: Using Git Locally (For Advanced Users)

```bash
# 1. Fork and clone the repository
git clone git@github.com:YOUR-USERNAME/amlc-handbook.git
cd amlc-handbook

# 2. Create a new branch
git checkout -b my-proposal-name

# 3. Make your changes
# - Copy the template: cp templates/cep-template.md Proposals/CEP-001-my-idea.md
# - Edit the file with your favorite editor

# 4. Commit your changes
git add .
git commit -m "Add CEP-001: My Great Idea"

# 5. Push to your fork
git push origin my-proposal-name

# 6. Go to GitHub and create a Pull Request
# - Visit https://github.com/amlcoftherockies/amlc-handbook
# - Click "Compare & pull request"
# - Fill out the template and submit
```

### What Happens After You Submit?

1. **Leadership reviews** for formatting and clarity (not approval)
2. **Community is notified** via Discord and other channels
3. **Discussion happens** - people comment, ask questions, suggest improvements
4. **You iterate** - update your proposal based on feedback
5. **Vote is called** - community votes on the proposal
6. **Decision is made** - approved proposals move to implementation

### Need Help?

- **Discord**: Ask in the #handbook or #general channel
- **Email**: leadership@amlcoftherockies.org
- **GitHub Issues**: Open an issue if you're stuck
- **Office Hours**: Join a community town hall and ask!

We're here to help you contribute. Don't let the process intimidate you - we value your ideas!




