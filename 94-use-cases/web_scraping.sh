#!/bin/bash
# Demo of simple web scraping via shell script.

hash pup 2>/dev/null || { >&2 echo 'You must install pup: https://github.com/ericchiang/pup/releases/latest' ; exit 1; }

site_to_scrape="http://www.vigilantglobal.com"
curl -s $site_to_scrape | pup 'img attr{src}'
