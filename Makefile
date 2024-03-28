include .env

.PHONY: templates labels

templates:
	@echo "Pushing issue and pull request templates..."
	rm -rf .git
	git init
	git add .github
	git commit -m "Add issue and pull request templates"
	git push "https://$(REPOSITORY_TOKEN)@github.com/$(REPOSITORY_NAME)" HEAD:main

labels:
	@echo "Setting labels..."
	npx -y github-label-sync --access-token ${REPOSITORY_TOKEN} --labels labels.yml ${REPOSITORY_NAME}