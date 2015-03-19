code = """
<script src="./string"></script>
"""
html = ""

defo = """
  var nibe = function (){
    switch (false) {
      case !(code === ""):
        return html;
        break;
      case !/^"/.test(code):
        html += "</quote>"+RegExp.lastMatch;
        code = code.replace(/^"/, "");
        highlight(quote);
        break;
      case !/^</.test(code):
        html += "<bracket>"+RegExp.lastMatch;
        code = code.replace(/^</, "");
        highlight(defo);
        break;
      case !/^>/.test(code):
        html += RegExp.lastMatch+"</bracket>";
        code = code.replace(/^>/, "");
        highlight(defo);
        break;
      case !/^./.test(code):
        html += RegExp.lastMatch;
        code = code.replace(/^./, "");
        highlight(defo);
        break;
    }
  }
"""
quote = """
  var nibe = function (){
    switch (false) {
      case !(code === ""):
        return html;
        break;
      case !/^"/.test(code):
        html += RegExp.lastMatch+"</quote>";
        code = code.replace(/^"/, "");
        highlight(defo);
        break;
      case !/^./.test(code):
        html += RegExp.lastMatch;
        code = code.replace(/^./, "");
        highlight(quote);
        break;
    }
  }
"""
bracket = """
  var nibe = function (){
    switch (false) {
      case !(code === ""):
        return html;
        break;
      case !/^>/.test(code):
        html += RegExp.lastMatch+"</bracket>";
        code = code.replace(/^>/, "");
        highlight(defo);
        break;
      case !/^./.test(code):
        html += RegExp.lastMatch;
        code = code.replace(/^./, "");
        highlight(bracket);
        break;
    }
  }
"""

highlight = (rule) ->
  eval(rule)
  nibe()
  html

console.log highlight(defo)
