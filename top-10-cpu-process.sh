#!/bin/bash

watch -d 'ps -eo pcpu,pid,ucmd | sort -k1 -r -n | head -10'

