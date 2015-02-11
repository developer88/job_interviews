arr = [0, 9, 8, 3, 3, 3, 5, 9, 5, 0]

def sort_uniq(arr)
   arr.sort!
   result = []
   arr.each_with_index do |el, index|
       result << el if arr[index - 1] != el || index == 0
   end
   result
end

puts sort_uniq(arr).inspect
