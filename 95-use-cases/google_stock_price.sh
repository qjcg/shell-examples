#!/bin/bash
# Scrape Google stock price from Google Finance.

url='https://www.google.com/finance?cid=304466804484872'
curl -s $url | pup '#ref_304466804484872_l text{}'
