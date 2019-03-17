#!/bin/bash
# Scrape Google stock price from Google Finance.

hash pup 2>/dev/null || { >&2 echo 'You must install pup: https://github.com/ericchiang/pup/releases/latest' ; exit 1; }

url='https://www.google.com/finance?cid=304466804484872'
curl -s $url | pup '#ref_304466804484872_l text{}'
