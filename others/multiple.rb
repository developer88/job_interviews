100.times do |i|
  num = ""
  num = "Fizz" if i%3 == 0
  num += "Buzz" if i%5 == 0
  puts num.size > 0 ? num : i
end
