#!/usr/bin/env bash
# Scrape stock price.

command -v pup >/dev/null || { >&2 echo 'You must install pup: https://github.com/ericchiang/pup/releases/latest' ; exit 1; }

symbol="${1:-rht}"
url="https://www.marketwatch.com/investing/stock/$symbol"
price="$(curl -s $url | pup '.intraday__price text{}' | grep '^[0-9]')"
printf "%s: %s\n" "$symbol" "$price"
