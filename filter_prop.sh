#!/bin/bash

for d in */; do
    if [[ -f "$d/captured.prop" ]]; then
        grep -e '^\[ro.build' -e '^\[ro.product' "$d/captured.prop" > "$d/filtered.prop"
    fi
done
