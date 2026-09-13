#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
mkdir -p build
latexmk -pdf Hausarbeit_de.tex
