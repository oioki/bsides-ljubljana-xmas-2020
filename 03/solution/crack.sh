#!/bin/bash

for FILE in *.cpt; do
    echo "### ${FILE}"

    for PASS in $(<possible-passwords); do
        ccrypt -d -K "${PASS}" "${FILE}" 2> /dev/null
        if [[ $? == 0 ]]; then
            echo "${PASS}"
            break
        fi
    done

done
