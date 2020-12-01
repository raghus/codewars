# https://www.codewars.com/kata/58223370aef9fc03fd000071/
# 6 kyu

# needs to be shorter!!

def dashatize(num)
  return "nil" if num.nil?
  s = ''
  num = num.abs
  num.digits.reverse.each_with_index do |digit,index|
    if digit.odd?
        s += "-#{digit}-"
    else
        s += "#{digit}"
    end
  end
  s = s.gsub("--","-")
  if s[0] == "-"
    s = s.reverse.chop.reverse
  end
  if s[-1] == "-"
    s.chop!
  end
  return s
end