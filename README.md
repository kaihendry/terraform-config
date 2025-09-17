# Pkl to Terraform concept

## Problem

How do you provide product teams with a way to self-service infrastructure at scale?

## Proposal: Leverage a proper configuration language and map to Terraform JSON

[PKL](https://pkl-lang.org/index.html) -> [Terraform JSON](https://developer.hashicorp.com/terraform/language/syntax/json) -> Infrastructure

This allows teams to write PKL configuration [(with IDE support!)](https://pkl-lang.org/vscode/current/index.html) that maps to Terraform resources.

The Github action [kaihendry/actions/terraform@main](https://github.com/kaihendry/actions/blob/main/terraform/action.yml):

1. Validates the configuration via pkl eval
2. Adds missing bits needed for a complete stack, like provider info via the [schema](https://github.com/kaihendry/actions/blob/main/terraform/TerraformConfig.pkl)
3. Could offer further policy as code / operational checks
4. Converts to Terraform JSON
5. Applies the infrastructure
