# AMLC Systems and Infrastructure

This directory contains technical documentation, workflows, and system configurations for the Applied Machine Learning Collective of the Rockies.

## 📋 Contents

### Repository Management
- **[Two-Repository Workflow](two-repo-workflow.md)** - How we manage public and private repositories
- **[Git Remote Configuration Script](fix-git-remotes.sh)** - Helper script to configure your local git remotes

### GitHub Workflows
Located in `.github/workflows/`:
- **Auto Assign** - Automatically assigns issues and PRs to reviewers
- **Sync from Public** - Syncs changes from public repo to staging (for staging repo)
- **Notify Staging on Merge** - Notifies staging when PRs are merged (for public repo)

### Related Systems

#### AMLC Programming Repository
**Repository**: [amlcoftherockies/amlc-programming](https://github.com/amlcoftherockies/amlc-programming)

Manages all event programming including:
- Talk proposals and scheduling
- Workshop planning and materials
- Activity proposals
- Event coordination

See [Proposals Documentation](/Foundation/proposals.md) for submission guidelines.

#### AMLC Website
**Repository**: [amlcoftherockies/amlcoftherockies.org](https://github.com/amlcoftherockies/amlcoftherockies.org)  
**Live Site**: [amlcoftherockies.org](https://amlcoftherockies.org)

The official AMLC website includes:
- Public-facing information about the community
- Event calendar and registration
- Member profiles and contributions
- Blog posts and announcements
- Resources and learning materials

**Relationship to Handbook**: The website pulls content from this handbook for display. Major policy changes in the handbook should be reflected on the website.

#### Communication Platforms
- **Discord**: [AMLC of the Rockies Discord](https://discord.gg/XsHBtnBH) - Primary community chat
- **YouTube**: [AMLC YouTube Channel](https://www.youtube.com/channel/UC1mzpF-lh7umde3v0cMtKmQ) - Recorded talks and content
- **Email**: 
  - General: leadership@amlcoftherockies.org
  - Member emails: @amlcoftherockies.net

## 🔧 Quick Start Guides

### For New Members

1. **Get Access**
   - Request access to private staging repo
   - Join Discord and introduce yourself
   - Review the [Community Structure](/Foundation/community-structure.md)

2. **Set Up Your Environment**
   ```bash
   # Clone public repo
   git clone git@github.com:amlcoftherockies/amlc-handbook.git
   
   # Clone staging repo (requires member access)
   git clone git@github.com:amlcoftherockies/amlc-handbook-staging.git
   
   # Run the remote configuration helper
   cd amlc-handbook-staging
   ../amlc-handbook/Systems/fix-git-remotes.sh
   ```

3. **Make Your First Contribution**
   - Read [How to Update the Handbook](/README.md#updating-the-almc-of-the-rockies-handbook)
   - Check out [open issues](https://github.com/amlcoftherockies/amlc-handbook/issues)
   - Submit a PR with your changes

### For Public Contributors

1. **Fork the Repository**
   ```bash
   # Fork on GitHub, then clone your fork
   git clone git@github.com:YOUR_USERNAME/amlc-handbook.git
   cd amlc-handbook
   ```

2. **Make Changes**
   ```bash
   git checkout -b my-contribution
   # Make your edits
   git add .
   git commit -m "Descriptive message"
   git push origin my-contribution
   ```

3. **Submit a Pull Request**
   - Go to the [public repo](https://github.com/amlcoftherockies/amlc-handbook)
   - Click "New Pull Request"
   - Follow the PR template

## 🛠️ Maintenance

### Regular Tasks
- **Daily**: Automated sync from public to staging (2 AM UTC)
- **Weekly**: Review open issues and PRs
- **Monthly**: Update website content from handbook changes
- **Quarterly**: Review and update system documentation

### Troubleshooting

#### Sync Conflicts
If the automated sync fails:
1. Check for conflict notification issue in staging repo
2. Follow resolution steps in the issue
3. Manually merge and create PR

#### Access Issues
- **Can't access staging repo**: Contact leadership@amlcoftherockies.org
- **SSH key problems**: See [GitHub SSH documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
- **Permission denied**: Verify you're using the correct GitHub account

## 📞 Support

- **Technical Issues**: Open an issue in the relevant repository
- **Process Questions**: Ask in Discord #handbook channel
- **Access Requests**: Email leadership@amlcoftherockies.org

## 🔗 Additional Resources

- [Foundation Documents](/Foundation/) - Mission, values, and governance
- [Proposals Process](/Foundation/proposals.md) - How to submit proposals
- [Community Offerings](/Foundation/community-offerings.md) - Member benefits
- [FAQ](/Frequently-Asked-Questions/) - Common questions

