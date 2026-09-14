#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
mkdir -p build
latexmk -pdf hausarbeit_de_feedback_revised.tex
latexmk -c hausarbeit_de_feedback_revised.tex
