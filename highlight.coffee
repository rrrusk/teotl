text = """
<script src="./string"></script>
"""

syntax = ""
highlight = (code) ->
  switch
    when code.length <= 0
      return syntax
    when (/^"/).test(code)
      syntax += "<quote>\"</quote>"
      code = code.replace(/^"/,"")
      highlight(code)
    when (/^./).test(code)
      syntax += RegExp.lastMatch
      code = code.replace(/^./,"")
      highlight(code)

console.log text
console.log highlight(text)
