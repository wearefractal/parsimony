#>> Setup

should = require 'should'
parsimony = require '../parsimony'

#>> Given some DSL code

code = '''
       >> Given some dsl code
         foo = "foo"
       '''

#>> When Parsimony parses it

blocks = Parsimony.parse code

#>> Then blocks should have 1 element

blocks.length.should.equal 1

#>> and the first element should be 'foo'

node = blocks.shift()
node.annotation.should.equal "Given some dsl code"
node.code.should.equal 'foo = "foo"'


#>> Given more complex dsl code

code = '''
       >> Given some dsl code
          foo = "foo"
       >> When I want to add another string
          foo+=" bar"
       >> Then I should see the strings appended
            foo ==="foo bar"
       '''

#>> When Parsimony parses it

blocks = Parsimony.parse code

#>> Then blocks should have 1 element

blocks.length.should.equal 3

#>> And the first element should be 'foo'

node = blocks.shift()
node.annotation.should.equal "Given some dsl code"
node.code.should.equal 'foo = "foo"'
node = blocks.shift()
node.annotation.should.equal "When I want to add another string"
node.code.should.equal 'foo+=" bar"'
node = blocks.shift()
node.annotation.should.equal "Then I should see the strings appended"
node.code.should.equal 'foo ==="foo bar"'

