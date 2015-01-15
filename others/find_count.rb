def find(arr, needle)
  count = 0
  arr.each do |num|
    break if num > needle 
    count += 1 if num == needle
  end
  puts "Number #{needle} is repeated #{count} time(s)"
end

find([1,2,3,4,4,4,5,6,7,8,9,10], 4)
