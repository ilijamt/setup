#!/usr/bin/env bash

export INSTALL_TMP_FILE=$(mktemp)
curl https://sdk.cloud.google.com > $INSTALL_TMP_FILE
bash $INSTALL_TMP_FILE --disable-prompts
