#!/bin/sh
# Runs every Praline test. Needs node, and build/chvm and build/chasm.
cd "$(dirname "$0")/../.." || exit 1
sh praline/tests/run.sh
