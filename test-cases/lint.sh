#!/usr/bin/env bash
set -eEuo pipefail

# cd to the root of the project
cd "$(dirname -- "$(readlink -f -- "${BASH_SOURCE[0]}")")"/..

find bin lib legacy-bin -type f |
  grep -Pv '/show-duplicate-java-classes$' |
  grep -Pv '/\.editorconfig$' |
  xargs --verbose shellcheck --shell=bash
