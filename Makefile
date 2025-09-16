.PHONY: YAML JSON terraform-yaml terraform-json
YAML:
	APIKEY=foo pkl eval -f yaml config.pkl

JSON:
	APIKEY=foo pkl eval -f json config.pkl

terraform-yaml:
	APIKEY=foo pkl eval -f yaml config.pkl | yq '.terraform'

terraform-json:
	APIKEY=foo pkl eval -f json config.pkl | jq '.terraform'
