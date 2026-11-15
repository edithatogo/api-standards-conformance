# Contributing to api-standards-conformance

This repository provides a framework for testing APIs against Health New Zealand API standards. Contributions should improve traceable conformance checks, reproducible examples, reports and documentation.

## Before you start

Read [README.md](README.md), [package.json](package.json), the affected feature definitions and [the existing licence](LICENSE). Search current issues and pull requests. Explain which published requirement a check represents and distinguish normative requirements from implementation assumptions or optional recommendations.

For bugs, provide the affected version or commit, environment, minimal reproduction, expected result and observed result. For a substantial proposal, describe the use case and compatibility impact before expanding implementation scope. Use existing issue templates when offered.

## Development and validation

Use the committed Yarn lockfile and the development setup in the README. Install dependencies with `yarn`. The package defines a mock-oriented test target:

```sh
yarn test:mock
```

Inspect [config.mock.json](config.mock.json) before execution: despite its name, it points to hosted API and authentication endpoints. Configure an isolated or explicitly authorised test environment and non-sensitive credentials before running this target. Other targets also address external environments; their names do not grant testing authority. Follow the README and package scripts for reports and container builds. Note that the existing lint and formatting scripts modify files, so review their changes before committing.

Add both conforming and nonconforming examples when changing an assertion. Preserve evidence linking each result to the selected standards version and response under test. Do not treat an unimplemented or excluded scenario as a successful conformance result. Explain behavioural changes to existing reports and feature tags. Container publication is separate from verifying a contribution.

## Pull requests

Create a focused branch from the current `main` branch and submit a pull request to this repository. Link the relevant issue or existing project task, explain the resulting behaviour, and update affected examples and documentation. Keep unrelated changes in separate pull requests.

Report executed commands, outcomes and the commit they validate. Identify unavailable checks and remaining limitations explicitly. Follow the repository's existing review and automated-check requirements; retain required gates and current ownership. Address findings and verify the final head before integration. Repository changes do not themselves authorise a release or external operational action.

## Security, rights and conduct

Follow the [security policy](https://github.com/edithatogo/.github/blob/main/SECURITY.md). Use private vulnerability reporting if available; otherwise request a private contact without publishing vulnerability details. Keep credentials, personal information and restricted source material out of issues, fixtures, logs and artifacts.

Read the [existing licence](LICENSE) and preserve attribution and third-party terms. Follow the [code of conduct](https://github.com/edithatogo/.github/blob/main/CODE_OF_CONDUCT.md) and keep technical discussions respectful.

## Basis for this guide

This guide follows [GitHub's contribution-guideline guidance](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/setting-guidelines-for-repository-contributors) and the contribution-process and testing principles in [OpenSSF Best Practices](https://www.bestpractices.dev/en/criteria). It does not assert certification.
