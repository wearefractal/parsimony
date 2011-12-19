getLeadspace = (code) ->

  leadspaceMatch = /^\n*( *)|[a-zA-Z]\n$/
  return leadspace = (code.match leadspaceMatch)[1] 


module.exports = getLeadspace
