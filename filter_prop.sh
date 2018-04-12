#!/bin/bash

grep -e '^\[ro.build' -e '^\[ro.product' captured.prop > filtered.prop
