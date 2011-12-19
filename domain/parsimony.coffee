tokenize = require './services/tokenize'
getLeadspace = require './services/getLeadspace'

Parsimony =

  tokenize: (dsl, delim, next) -> tokenize dsl, delim, next    
  getLeadspace: (codeblock, next) -> getLeadspace codeblock, next


module.exports = Parsimony


