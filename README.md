# Community Handbook
This handbook outlines the mission, policies, and processes of the Applied Machine Learning Collective (AMLC) of the Rockies for both internal and external community members. Inspired by [The GitLab Handbook](https://handbook.gitlab.com/), which open-sourced the structure of an entire organization, we similarly value transparency and open dialogue. We believe strong leaders and strong communities are unafraid to share their ideas and welcome constructive discussion as long as it follows our [Code of Conduct]().

## Updating the ALMC of the Rockies Handbook
We highly encourage folks to read, comment, and challenge the AMLC of the Rockies Handbook. Our community isn't about worshipping the certainty of our opinions, it's about growth and the exchanging of ideas knowing that perspective changes everything. We recognize that in both [physics](https://en.wikipedia.org/wiki/Relativity_of_simultaneity) and community, truth can appear different from different vantage points. That’s why dialogue and challenge are essential. We’re not just seeking consensus, we’re seeking understanding. Therefore, we've provided ways to update our handbook and discuss ways to improve the topics it covers. 

### Updating the Handbook: Open an Issue
One great way to start a conversation or ask a question on a particular topic, is to open an issue.  When opening an issue, please use the recommended github issue tags mentioned below. 

#### What Makes a Good Issue?

A **good issue** clearly communicates a problem, question, or proposal in a way that others can understand, engage with, and act on. For the AMLC Handbook, a good issue fosters shared understanding and constructive community discussion. Issues might lead to someone updating the handbook with a `pull request`, or simply helps clairify/answer questions. Think of this as a way to determine if you need to make a PR or contribute a [Community Enhancement Proposal](/Foundation/proposals.md)

| Trait              | Description                                                                 | Example                                                             |
|--------------------|-----------------------------------------------------------------------------|---------------------------------------------------------------------|
| **Clear Intent**    | The issue is labeled as `discuss`, `propose`, or `inquire` to guide readers. | `Label: propose — Add clearer language to the values statement.`    |
| **Concise Title**   | The title briefly summarizes the topic.                                     | `Clarify officer role descriptions`                                 |
| **Contextual Description** | Explains *why* the issue matters and what part of the handbook it refers to. | “In section 2.3, the VP and President have the same description...” |
| **Actionability**   | Others can tell what they’re being asked to do (comment, review, give feedback). | “Open to suggestions on how to clarify this...”                     |
| **Respectful Tone** | Uses inclusive, collaborative language to invite feedback and diverse perspectives. | “What do others think about revising this for clarity?”             |
| **References**      | Quotes, links, or examples are provided to support the topic.               | > _“Current text: ‘The board shall…’ — this could use simpler language.”_ |
| **Engagement-Oriented** | Ends with a question or call to action to encourage participation.         | “Does anyone object before we move to a PR?”                        |


####  Recommended GitHub Issue Tags for the AMLC Handbook

| Label     | Purpose                                                              | Example Use Case                                                  |
|-----------|----------------------------------------------------------------------|-------------------------------------------------------------------|
| `discuss` | Open-ended conversations about a handbook section, idea, or principle. | “Should we reword the mission to be more action-focused?”         |
| `propose` | A concrete suggestion or draft idea for community review.            | “Proposed code of conduct update for inclusive language”          |
| `inquire` | Asking questions to better understand a section or decision.         | “What’s the reasoning behind our officer role definitions?”       |

You can find our issue template [here](/templates/issue.tpl.md)
Our [repo issues section](https://github.com/amlcoftherockies/amlc-handbook/issues) has some example issues as well. 

### Updating the Handbook: Create a Pull Request
For AMLC of the Rockies pull requests, you first must clone the repo, make a new branch, edit your file, push to the branch, and open a request to merge the branches. Once you request we `pull your branch into main`, that is where the magic happens. The community can discuss and contribute to your branch before we add it to our handbook permanently! 

#### What Makes a Good PR?
 A **good pull request (PR)** is clear, focused, and invites thoughtful review. For AMLC Handbook contributions, a good PR helps the community track changes transparently and build consensus before merging.

| Trait                 | Description                                                                 | Example                                                              |
|-----------------------|-----------------------------------------------------------------------------|----------------------------------------------------------------------|
| **Descriptive Title** | Briefly summarizes what the PR does.                                        | `Refines officer role definitions in Section 2.3`                    |
| **Linked to Issue**   | Connects the PR to its related issue with `Closes #123` or `Resolves #45`. | `Closes #78`                                                         |
| **Clear Motivation**  | Explains the *why* behind the change in the PR description.                 | “This clarifies that the VP steps in when the President is absent.” |
| **Scope is Focused**  | Keeps changes tightly scoped to one topic or section.                       | Avoids changing unrelated sections in the same PR                    |
| **Includes Before/After** | Shows or summarizes the changes made to improve review.                 | “Old: ‘The board shall...’ → New: ‘The board is responsible for...’”|
| **Community Language** | Maintains an inclusive and neutral tone aligned with AMLC’s values.        | Uses collaborative wording: “we,” “our,” “members,” etc.            |
| **Request for Review**| Invites others to weigh in before merging.

You can find our PR template [here]()


#### Process 
1. Clone the repo
```
git clone https://github.com/amlcoftherockies/amlc-handbook.git
cd amlc-handbook
```
2. Create a new branch for your changes
`git checkout -b my-proposed-change`

3. Make your edits to the handbook files
# (Use your favorite editor, e.g., VS Code, nano, etc.)

4. Stage and commit your changes
```
git add -A
git commit -m "Propose: Updated section on officer roles - Resolves #42"
```

5. Push your branch to GitHub
`git push origin my-proposed-change `