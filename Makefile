include .env

.PHONY: template label

template:
	@echo "Pushing issue and pull request templates..."
	git add .github
	git commit -m "Add issue and pull request templates"
	git push "https://$(REPOSITORY_TOKEN)@github.com/$(REPOSITORY_NAME)" HEAD:main

label:
	@echo "Setting labels..."
	npx -y github-label-sync --access-token ${REPOSITORY_TOKEN} --labels labels.yml ${REPOSITORY_NAME}