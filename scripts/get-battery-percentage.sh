#!/usr/local/bin/bash
pmset -g ps | tail -n 1 | cut -d ' ' -f 3 | cut -f 2 | cut -d ';' -f 1
