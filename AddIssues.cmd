@rem /* SPDX-License-Identifier: Apache-2.0 */
@echo off

@rem Create labels if they don't exist
:setupLabels
  gh label create meta

  @rem Update all labels, both old and new, to standard colours
  gh label edit   meta --color #5b2cf4

:createIssuesForMissingFiles
  call :addAnIssue README.md "Create readme.MD"
  call :addAnIssue LICENSE. "Create LICENSE."
  call :addAnIssue CODE_OF_CONDUCT.md "Create Code of Conduct"
  call :addAnIssue CONTRIBUTING.md "Create Contributor Policy"
  call :addAnIssue SECURITY.md "Create Security Policy"
  call :addAnIssue .github\copilot-instructions.md "Create Copilot instructions"
  call :addAnIssue .github\workflows\dependency-review.yml "Create Dependency Review Action"
  goto :EOF

:addAnIssue
  if not exist %1 (
    gh issue new -F nul --assignee @me --label meta --title %2
  )
