code = """
console.log("fwei");
"""
html = ""

syntax = {
  "patterns":[
    {
      'begin': '"'
      'beginCaptures':
        '0':
          'name': 'punctuation.definition.string.begin.js'
      'end': '"'
      'endCaptures':
        '0':
          'name': 'punctuation.definition.string.end.js'
      'name': 'string.quoted.double.js'
      'patterns': [
        {
          'match': '\\\\(x\\h{2}|[0-2][0-7]{,2}|3[0-6][0-7]|37[0-7]?|[4-7][0-7]?|.)'
          'name': 'constant.character.escape.js'
        }
      ]
    }
    {
      'match': '\\b(console)\\b'
      'name': 'entity.name.type.object.js.firebug'
    }
  ]
}

liquidBefore = """
var nibe = function(){
  switch (false) {
      case !(code === ""):
        return html;
        break;
"""

liquidAfter = """
      case !/^./.test(code):
        html += RegExp.lastMatch;
        code = code.replace(/^./, "");
        highlight(liquid);
        break;
  }
}
"""

liquidCenter = ""

ends = []
for pattern in syntax["patterns"]
  if pattern["begin"]
    liquidCenter += """
      case !/^#{pattern["begin"]}/.test(code):
        html += "<span class=\\"#{pattern["name"]}\\">"+RegExp.lastMatch;
        code = code.replace(/^#{pattern["begin"]}/, "");
        highlight(liquid);
        break;

    """
  if pattern["match"]
    liquidCenter += """
      case !/^#{pattern["match"]}/.test(code):
        html += "<span class=\\"#{pattern["name"]}\\">"+RegExp.lastMatch+"</span>";
        code = code.replace(/^#{pattern["match"]}/, "");
        highlight(liquid);
        break;

    """

liquid = liquidBefore+liquidCenter+liquidAfter
console.log liquidCenter

highlight = (rule) ->
  eval(rule)
  nibe()
  html

console.log highlight(liquid)
