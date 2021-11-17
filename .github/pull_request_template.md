## Summary
- Brief summary of the changes included in this PR
- Any additional information or context which may help the reviewer
 
### Checklist
Please ensure you have addressed all concerns below before marking a PR "ready for review" or before requesting a re-review:
 
#### Functionality Checks
 
- [ ] Code is functional, as tested locally.

- [ ] Tests have been added or updated to cover the proposed changes. If not, please explain why tests aren't needed:

- [ ] Automated checks pass, if applicable. If CodeClimate checks do not pass, explain reason for failures:
 
- [ ] If your changes will be tested manually, you have run `bundle update` and committed your changes to Gemfile.lock.
 
- [ ] You have merged the latest changes from the target branch (usually `master` or `main`) into your branch.
 
- [ ] Your target branch is `master`, `main`, or `production`, or you have specified the reason for an alternate branch here:
 
- [ ] PR title is either of the format **SRCH-#### \<description\>** matching the associated Jira ticket (i.e. "SRCH-123 implement feature X"), or **Release - SRCH-####, SRCH-####, SRCH-####** matching the Jira ticket numbers in the release.
 
- [ ] You have squashed your commits into a single commit (exceptions: your PR includes commits with formatting-only changes, such as required by Rubocop or Cookstyle, or if this is a feature branch that includes multiple commits)
 
- [ ] Your primary commit message is of the format **SRCH-#### \<description\>** matching the associated Jira ticket
 
#### Process Checks
 
- [ ] You have specified an "Assignee", and if necessary, additional reviewers