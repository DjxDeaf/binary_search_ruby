def chop(int=0,sorted_array=[])
  max = sorted_array.length - 1
  min = 0
  if int > sorted_array[high] #If the int is bigger that the highest value in the array
    puts "Sorry, The number #{int} is not in the array!"
    return false
  elsif !int.is_a? Integer #If the int is not an Integer (Boolean, String, Float)
    puts "Sorry, only Integers are allowed in this method"
    return false
  elsif int < sorted_array[high] #If the int is lower
    while (high >= low) #Do as long as the higher index is in fact bigger that the lower index. Equal will cache the mathing value, if any.™
      index = (max + min)/2
      if sorted_array[index] > int
      end

    end
  end

end