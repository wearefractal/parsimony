#>> Setup

should = require 'should'
lex = require '../lex'

#>> Given some tokens

tokens = []
tokens.push "#"
tokens.push "(something)"
tokens.push "(whitespace)"

#>> And some keywords

keywords = []
keywords["(anything)"]    = "(*+)"
keywords["(something)"]   = "(.+)"
keywords["(whatever)"]    = ".+"
keywords["(optional)"]    = ".*"
keywords["(space)"]       = "\s+"
keywords["(newline)"]     = "\n+"
keywords["(whitespace)"]  = "\s|\n+"

#["but"] =

#>> When 

lex tokens, keywords, (pattern) ->

  pattern.should.equal "#(.+)\s|\n+"


"#(anything but space)(whitespace)"
