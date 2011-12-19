#>> Setup

should = require 'should'
tokenize = require '../tokenize'

#>> Given some code

code = "i think that this tokenizing:service is cool"

#>> When the code is tokenized

tokenize code, " ", (tokens) ->
  
#>> Then 

  tokens.length.should.equal 7

#>> When a token containing ':' is tokenized

  tokenize tokens[4], ":", (tokens) ->

#>> Then

    tokens[0].should.equal "tokenizing"  
    tokens[1].should.equal "service"  


#>> Given some DSL code

code = 
  '''
    >> Given some dsl code
    foo = "foo"
  '''

#>> when it is tokenized

tokenize code, />>(.+)\n/, (tokens) ->

  tokens[1].should.equal " Given some dsl code"

