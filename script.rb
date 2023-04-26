require 'pry'

array = [4,5,7,2,5,7,1]


def bubble_sort(array)
  output_array = array
  until check_sorted_array(array) do
    output_array = sort_array(array)
  end
  output_array
end

def check_sorted_array(array)
  array.each do |num|
    curr_num = array.find_index(num)
    next_num = curr_num+1
    if array[next_num] == nil
      return true
    elsif array[curr_num] > array[next_num]
      return false
    end
  end
end

def sort_array(array)
  array.each do |num|
    curr_num = array.find_index(num)
    next_num = curr_num + 1
    control(array, array[curr_num], array[next_num])
# binding.pry
  end
end

def control(array,num1,num2)
# binding.pry
  if num2 == nil
    return
  elsif num1 < num2 
    return
  elsif num1 == num2
    curr_num = array.find_index(num1)
    next_num = curr_num + 1
    binding.pry
    control(array, array[curr_num], array[next_num + 1])
  elsif num1 > num2
    switch_arr_index(array,num1,num2) 
  end
end

def switch_arr_index(array,num1,num2)
  num1_index = array.find_index(num1)
  num2_index = array.find_index(num2)
  array[num1_index] = num2 
  array[num2_index] = num1
  array
end



#p control(array,7,2)
#p switch_arr_index(array,4,7)
#p sort_array(array)
p bubble_sort(array)
#p check_sorted_array([1,2,3])