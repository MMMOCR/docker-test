#!/bin/bash

set -eu

git switch $GITHUB_REF_NAME

SCRIPT=".github/${WORKFLOW_PATH}"

chmod +x "$SCRIPT"

bash -c "$SCRIPT"
