#!/bin/bash

set -eu

SCRIPT=".github/${WORKFLOW_PATH}"

chmod +x "$SCRIPT"

bash -c "$SCRIPT"
