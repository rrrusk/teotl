require "strscan"

code = <<"EOS"
class Fii
  def fjir a,b
    print "jfie"
    hoge = "fjei"
    print [1,2,3,4].inject(:+)
  end
end
EOS

s = StringScanner.new(code)
until s.eos?
  case
  when s.scan(/"/)
    print "<quote>"
    if s.scan(/(.*)"/)
      print s[1]
      print "</quote>"
    else
      print s.rest
      s.terminate
    end
  when s.scan(/class/)
    print "<class>"
    if s.scan(/(.*)end/m)
      print s[1]
      print "</class>"
    else
    end
  when s.scan(/./m)
    print s[0]
  end
end
