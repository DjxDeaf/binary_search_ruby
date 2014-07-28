def chop(int=0,sorted_array=[],high=(sorted_array.length-1),low=0)
  if high < low
    puts "Error: The number is not in the array"
    return false
  end
  index = (high+low)/2
  if sorted_array[index] > int
      return chop(int,sorted_array,index-1,low)
  elsif sorted_array[index] < int
    return chop(int,sorted_array,high,index+1)
  else
    puts "The number #{int} has been found. Index: #{index} with value #{sorted_array[index]}"
    return index
  end
end

#Calling example
arr = [*1..100]
chop(45,arr)