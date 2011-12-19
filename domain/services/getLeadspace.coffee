getLeadspace = (code, next) ->

  leadspaceMatch = /^\n*( *)|[a-zA-Z]\n$/
  next leadspace = (code.match leadspaceMatch)[1] 


module.exports = getLeadspace
