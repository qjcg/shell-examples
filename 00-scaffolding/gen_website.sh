#!/bin/bash
# Generate a simple directory structure for a website

domain=${1:?Must provide a domain name.}

mkdir -p $domain/{css,js,img}
echo 'console.log("hello world");' > $domain/js/main.js
touch $domain/css/main.css
