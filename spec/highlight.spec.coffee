# addition = (number1, number2) ->
#   return number1 + number2
#
# describe("足し算の確認", ->
#   it("足し算が正しい", ->
#     expect(addition(1, 2)).toEqual(3)
#   )
# )
test = require("../hilight").test

describe("test", ->
  it("tests", ->
    expect(test(2,3)).toEqual(5)
  )
)
