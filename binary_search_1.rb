=begin
def chop(int=0,sorted_array=[])
  index = (sorted_array.length-1)/2
  max = sorted_array.length-1
  min = 0
  i = 20
  while (sorted_array[index] != int) && (index != 0) && (i >=0)
    if sorted_array[index] > int
      max = index
      index -= (max-min)/2
      i -= 1
      puts "IntIsLower - Index is: #{index}"
    elsif sorted_array[index] < int
      min = index
      index += (max-min)/2
      i -= 1
      puts "IntIsBigger - Index is: #{index}"
    end
  end
      puts "The number #{int} was found on Index #{index} with the value #{sorted_array[index]}"
      return true
end
=end

def chop(int=0,sorted_array=[])
  high = sorted_array.length-1
  low = 0
  if int > sorted_array[high] #If the int is bigger that the highest value in the array
    puts "Sorry, The number #{int} is not in the array!"
    return false
  elsif !int.is_a? Integer #If the int is not an Integer (Boolean, String, Float)
    puts "Sorry, only Integers are allowed in this method"
    return false
  elsif int < sorted_array[high] #If the int is lower
    while (high >= low) #Do as long as the higher index is in fact bigger that the lower index. Equal will cache the mathing value, if any.
      index = (high+low)/2
      if sorted_array[index] > int #Binary Search Action - If the int is lower that the array value on index place
        high = index
        index -= (high - low)/2
        #puts "IntIsLower - Index is: #{index}" #Debugging Line
      elsif sorted_array[index] < int #Binary Search Action - If the int is higher that the array value on index place
        low = index
        index += (high + low)/2
        #puts "IntIsBigger - Index is: #{index}" #Debugging Line
      else
        puts "The number #{int} was found on Index #{index} with the value #{sorted_array[index]}"
        return true
      end
    end
  elsif int == sorted_array[high] #If the int is equal to the last value in the array
    puts "The number #{int} was found on Index #{high} with the value #{sorted_array[high]}"
    return true
  else #In any other case / In case the binary search couldn't find the number
    puts "Sorry, The number #{int} is not in the array!"
    return false
  end
end
array = [*1..100000]
chop(66666,array)
#chop(int, array_of_int)
