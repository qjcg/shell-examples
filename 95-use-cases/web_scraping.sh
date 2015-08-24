#!/bin/bash
# Demo of simple web scraping via shell script.

[[ $(which pup) ]] || { echo 'You must install pup: https://github.com/ericchiang/pup/releases/latest' ; exit 1; }

site_to_scrape="http://www.vigilantglobal.com"
curl -s $site_to_scrape | pup 'img attr{src}'
