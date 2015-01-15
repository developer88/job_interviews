def his(str)
  puts str
  digits = {}
  str.each_char do |ch|
    digits[ch] = 0 if digits[ch].nil?
    digits[ch] += 1
  end
  digits.each do |digit, count|
    print "#{digit}: "
    count.times{ print('*')}
    puts ""
  end
end

his('0123453427586475927763')
