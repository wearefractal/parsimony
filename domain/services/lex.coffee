lex = (tokens, keywords, next) ->

  tokens = tokens.map (token) ->
    if value = keywords[token] then return value
    else return token
  
  next tokens.join('')


module.exports = lex
