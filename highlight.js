// Generated by CoffeeScript 1.8.0
(function() {
  var highlight, syntax, text;

  text = "<script src=\"./string\"></script>";

  syntax = "";

  highlight = function(code) {
    switch (false) {
      case !(code.length <= 0):
        return syntax;
      case !/^"/.test(code):
        syntax += "<quote>\"</quote>";
        code = code.replace(/^"/, "");
        return highlight(code);
      case !/^./.test(code):
        syntax += RegExp.lastMatch;
        code = code.replace(/^./, "");
        return highlight(code);
    }
  };

  console.log(text);

  console.log(highlight(text));

}).call(this);