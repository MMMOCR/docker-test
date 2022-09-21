#!/bin/bash

set -eu

REPO_FULLNAME=$(jq -r ".repository.full_name" "$GITHUB_EVENT_PATH")

SCRIPT=".github/tests/${WORKFLOW_PATH}"

$SCRIPT
