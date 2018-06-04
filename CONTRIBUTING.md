Contributing to Punchcard
=========================

Punchard is work of [multiple contributors](https://github.com/GSA/punchcard/graphs/contributors). You're encouraged to submit [pull requests](https://github.com/GSA/punchcard/pulls), [propose features and discuss issues](https://github.com/GSA/punchcard/issues).


#### Contributing to localization files

These files are in the YAML format.

You can edit existing files or create new files directly via the [Github web interface](https://github.com/GSA/punchcard/tree/master/localizations). Or, you can use Git from the command line (see below). Either way, follow these steps to create a new localization file:

1. Start with `non_es_en_template.yml` and copy it into your new locale file. The reason you are using `non_es_en_template.yml` and not `en.yml` or `es.yml` is because the English and Spanish locale files contain many translations that are not used in other locales.
1. Change the two letter locale in line 1 of your new file from `non_es_en_template` to match the locale of the filename.
1. Be sure to follow the instructions for date-related fields like `cdr_format`, `date_format`, and `slashes`. Case is important!
1. Be careful with preserving any opening/closing quotes around strings.
1. Once you have the file ready, copy/paste it into a [YAML validator](http://www.yamllint.com) to ensure what you have is valid YAML.
1. Commit the change in Github

#### Fork the Project

If you don't want to use the [Github web interface](https://github.com/GSA/punchcard/tree/master/localizations), you can use the command line tools to fork the [project on Github](https://github.com/GSA/punchcard) and check out your copy.

```
git clone https://github.com/contributor/punchcard.git
cd punchcard
git remote add upstream https://github.com/GSA/punchcard.git
```

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
git config --global user.email "contributor@example.com"
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

Go to https://github.com/contributor/punchcard and select your feature branch. Click the 'Pull Request' button and fill out the form. A series of automated tests will run on [CirclCI](https://circleci.com/gh/GSA/punchcard). If tests pass, your pull request will usually get reviewed and accepted within a few days.

#### Be Patient

It's likely that your change will not be merged and that the nitpicky maintainers (or CircleCI) will ask you to do more, or fix seemingly benign problems. Hang on there!

#### Thank You

Please do know that we really appreciate and value your time and work.
