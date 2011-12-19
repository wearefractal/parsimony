#>> Setup

should = require 'should'
getLeadspace = require '../getLeadspace'

#>> Given a code block

code = "  foo = 1\nbar = 2"

#>> When I get the leadspace

leadspace = getLeadspace code

#>> Then
  
leadspace.should.equal "  "

