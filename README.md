# RepoChecker

Windows script to detect common repository files and create GitHub issues
for any missing ones.

## What it does

- Uses the GitHub CLI (`gh`) to create a `meta` label and open issues for
  missing files such as:
  - README.md
  - LICENSE
  - CODE_OF_CONDUCT.md
  - CONTRIBUTING.md
  - SECURITY.md
  - .github/copilot-instructions.md
  - .github/workflows/dependency-review.yml

## Requirements

- Windows
- GitHub CLI (`gh`) installed and authenticated (run `gh auth login`)
- Run from the repository root

## Usage

Open PowerShell or CMD in the repository root and run:

```batch
.\AddIssues.cmd
```

This will:

- create the `meta` label (if missing).
- Reset the meta label to a standard colour.
- Open issues assigned to you, for each missing file.
