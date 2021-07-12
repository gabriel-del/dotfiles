#!/bin/bash

expression="$(echo "$@" | cut -d' ' -f1)"
echo "Total: "
python -c "print($expression)"

