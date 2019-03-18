#!/usr/bin/env bash
# Demo of simple web scraping via shell script.

command -v pup >/dev/null || { >&2 echo 'The pup command is required: https://github.com/ericchiang/pup/releases/latest' ; exit 1; }

site_to_scrape="https://www.google.com/"
curl -s $site_to_scrape | pup 'img attr{src}'
