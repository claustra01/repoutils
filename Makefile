include .env

.PHONY: label

label:
	npx -y github-label-sync --access-token ${REPOSITORY_TOKEN} --labels labels.yml ${REPOSITORY_NAME}