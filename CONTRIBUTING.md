Contributing to Punchcard
=========================

Punchcard is the work of [multiple contributors](https://github.com/GSA/punchcard/graphs/contributors). You're encouraged to submit [pull requests](https://github.com/GSA/punchcard/pulls), [propose features and discuss issues](https://github.com/GSA/punchcard/issues).

Note: As of November 2021, management of multilingual support has moved from the [GSA/Punchcard](https://github.com/GSA/punchcard/) repository to the [GSA/search-gov](https://github.com/GSA/search-gov) repository. Learn how to contribute to multilingual search support on Search.gov [here](https://github.com/GSA/search-gov/blob/master/CONTRIBUTING.md).

#### Fork the Project

If you don't want to use the [Github web interface](https://github.com/GSA/punchcard/tree/master/), you can use the command line tools to fork the [project on Github](https://github.com/GSA/punchcard) and check out your copy.

Instructions on how to fork a project can be found [here](https://docs.github.com/en/get-started/quickstart/fork-a-repo).

#### Create a Topic Branch

Make sure your fork is up-to-date and create a topic branch for your feature or bug fix.

```
git checkout master
git pull upstream master
git checkout -b my-feature-branch
```

#### Commit Changes

Make sure git knows your name and email address:

```
git config --global user.name "Your Name"
git config --global user.email "youremail@example.com"
```

Writing good commit logs is important. A commit log should describe what changed and why.

```
git add ...
git commit
```

#### Push

```
git push origin my-feature-branch
```

#### Make a Pull Request

[Create a PR](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request-from-a-fork) to propose your changes. A series of automated tests will run on [CircleCI](https://circleci.com/gh/GSA/punchcard), and a checklist will be automatically inserted into the body of the PR. You may ignore the following items:
* If your changes will be tested manually, you have run bundle update and committed your changes to Gemfile.lock
* PR title is either of the format SRCH-#### <description> matching the associated Jira ticket (i.e. "SRCH-123 implement feature X"), or Release #.#.# matching the release number
* Your primary commit message is of the format SRCH-#### <description> matching the associated Jira ticket
* You have specified an "Assignee", and if necessary, additional reviewers

If tests pass and the other checklist items are complete, your pull request will usually get reviewed and accepted within a few days.

#### Thank You

Please do know that we really appreciate and value your time and work.
