require 'pry'

array = [4,1,7,2,5,8,123,5,7,5]


def bubble_sort(array)
  output_array = array
  until check_sorted_array(array) do
    output_array = sort_array(array)
  end
  output_array
end

def check_sorted_array(array)
  array.each_with_index do |num, i|
    if array[i + 1] == nil
      return true
    elsif num > array[i + 1]
      return false
    end
  end
end

def sort_array(array)
  array.each_with_index do |num, i|
    control(array, i,i+1)
  end
end

def control(array,index1,index2)
num1 = array[index1]
num2 = array[index2]
  if num2 == nil # could've combined the if statements that return immediately with || into one if statement
    return
  elsif num1 < num2 
    return
  elsif num1 == num2
    return
  elsif num1 > num2
    switch_arr_index(array,index1,index2) 
  end
end

def switch_arr_index(array,index1,index2)
  holder = array[index1]
  array[index1] = array[index2]
  array[index2] = holder
  array
end



#p control(array,7,2)
#p switch_arr_index(array,4,7)
#p sort_array(array)
#p check_sorted_array([1, 2, 4, 5, 7, 7, 5])
#p bubble_sort(array)