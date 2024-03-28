# Usage
1. Generate repository token at [GitHub settings page](https://github.com/settings/tokens) (Must allow "repo" scope)
2. Run `cp .env.sample .env`, set `REPOSITORY_TOKEN` and `REPOSITORY_NAME` (e.g. "claustra01/repoutils")
3. Edit `labels.yml` if you need ([docs](https://github.com/Financial-Times/github-label-sync?tab=readme-ov-file#label-config-file))
4. Run `make labels` if you want labels / Run `make templates` if you want issue and pull request templates