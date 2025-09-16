.PHONY: YAML JSON terraform-yaml terraform-json print-env

# --- Fake envs for local runs (mimic CI defaults) ---
export APIKEY ?= fake-api-key
export TF_ENVIRONMENT ?= dev
export REPO_NAME ?= terraform-config
export GITHUB_ACTOR ?= local-dev
export GITHUB_REPOSITORY ?= kaihendry/terraform-config

# --- Targets ---
YAML:
	pkl eval -f yaml config.pkl

JSON:
	pkl eval -f json config.pkl

terraform-yaml:
	pkl eval -f yaml config.pkl | yq '.terraform'

terraform-json:
	pkl eval -f json config.pkl | jq '.terraform'

print-env:
	@echo APIKEY=$(APIKEY)
	@echo TF_ENVIRONMENT=$(TF_ENVIRONMENT)
	@echo REPO_NAME=$(REPO_NAME)
	@echo GITHUB_ACTOR=$(GITHUB_ACTOR)
	@echo GITHUB_REPOSITORY=$(GITHUB_REPOSITORY)
