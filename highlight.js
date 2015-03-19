// Generated by CoffeeScript 1.8.0
(function() {
  var bracket, code, defo, highlight, html, quote;

  code = "<script src=\"./string\"></script>";

  html = "";

  defo = "var nibe = function (){\n  switch (false) {\n    case !(code === \"\"):\n      return html;\n      break;\n    case !/^\"/.test(code):\n      html += \"</quote>\"+RegExp.lastMatch;\n      code = code.replace(/^\"/, \"\");\n      highlight(quote);\n      break;\n    case !/^</.test(code):\n      html += \"<bracket>\"+RegExp.lastMatch;\n      code = code.replace(/^</, \"\");\n      highlight(defo);\n      break;\n    case !/^>/.test(code):\n      html += RegExp.lastMatch+\"</bracket>\";\n      code = code.replace(/^>/, \"\");\n      highlight(defo);\n      break;\n    case !/^./.test(code):\n      html += RegExp.lastMatch;\n      code = code.replace(/^./, \"\");\n      highlight(defo);\n      break;\n  }\n}";

  quote = "var nibe = function (){\n  switch (false) {\n    case !(code === \"\"):\n      return html;\n      break;\n    case !/^\"/.test(code):\n      html += RegExp.lastMatch+\"</quote>\";\n      code = code.replace(/^\"/, \"\");\n      highlight(defo);\n      break;\n    case !/^./.test(code):\n      html += RegExp.lastMatch;\n      code = code.replace(/^./, \"\");\n      highlight(quote);\n      break;\n  }\n}";

  bracket = "var nibe = function (){\n  switch (false) {\n    case !(code === \"\"):\n      return html;\n      break;\n    case !/^>/.test(code):\n      html += RegExp.lastMatch+\"</bracket>\";\n      code = code.replace(/^>/, \"\");\n      highlight(defo);\n      break;\n    case !/^./.test(code):\n      html += RegExp.lastMatch;\n      code = code.replace(/^./, \"\");\n      highlight(bracket);\n      break;\n  }\n}";

  highlight = function(rule) {
    eval(rule);
    nibe();
    return html;
  };

  console.log(highlight(defo));

}).call(this);
