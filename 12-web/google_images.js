#!/usr/bin/env casperjs

var casper = require("casper").create();

casper.start("https://images.google.com/", function() {
  this.capture("gimages.png");
});

casper.run();
