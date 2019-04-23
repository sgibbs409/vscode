#!/usr/bin/env bash
#
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

VSCODE_PATH="$(dirname "$(dirname "$(dirname "$(dirname "$(realpath "$0")")")")")"

PROD_NAME="Code Server - Dev"
VERSION=""
COMMIT=""
EXEC_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
REMOTE_COMMAND=""
CLI_SCRIPT="$VSCODE_PATH/out/remoteCli.js"
node "$CLI_SCRIPT" "$PROD_NAME" "$VERSION" "$COMMIT" "$EXEC_NAME" "$REMOTE_COMMAND" "$@"