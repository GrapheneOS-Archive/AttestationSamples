#!/bin/bash

for d in */; do
    if [[ -f "$d/captured.prop" ]]; then
        grep '^\[ro\.' "$d/captured.prop" | grep -v \
            -e '^\[ro\.ap_serial' \
            -e '^\[ro\.boot\.' \
            -e '^\[ro\.bootmode' \
            -e '^\[ro\.em\.did' \
            > "$d/filtered.prop"
    fi
done
