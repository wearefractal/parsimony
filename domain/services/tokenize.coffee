tokenize = ({dsl, parsingDelim, next}) ->

  # strip leading whitespace and \n's
  dsl.replace /^\n\s+/, ''

  tokens = dsl.split parsingDelim
  tokens.pop()
  
  next tokens


module.exports = tokenize
