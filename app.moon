lapis = require "lapis"
console = require "lapis.console"

class extends lapis.Application
  "/": =>
    "Hello World!"
  "/console": console.make!
