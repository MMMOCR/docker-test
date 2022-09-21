#!/bin/bash

set -eu

SCRIPT=".github/${WORKFLOW_PATH}"

ls -la "$SCRIPT"

bash -c "$SCRIPT"
