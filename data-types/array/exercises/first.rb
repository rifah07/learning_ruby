def nil_array(number)
  # return an array containing `nil` the given number of times
  Array.new(number)
end

def first_element(array)
  # return the first element of the array
  array[0]  # or array.first
end

def third_element(array)
  # return the third element of the array
  array[2]  # or array.at(2)
end

def last_three_elements(array)
  # return the last 3 elements of the array
  array[-3..-1] # or array.last(3)
end

def add_element(array)
  # add an element (of any value) to the array
  array.push("Apple")  # or array << "Apple"
end

def remove_last_element(array)
  # Step 1: remove the last element from the array
  array.pop  # or array.delete_at(-1)

  # Step 2: return the array (because Step 1 returns the value of the element removed)
  array
end

def remove_first_three_elements(array)
  # Step 1: remove the first three elements
  array.shift(3) # or array.slice!(0, 3)

  # Step 2: return the array (because Step 1 returns the values of the elements removed)
  array
end

def array_concatenation(original, additional)
  # return an array adding the original and additional array together
  additional_array = original + additional  # or original.concat(additional)
  additional_array
end

def array_difference(original, comparison)
  # return an array of elements from the original array that are not in the comparison array
  original - comparison  # or original.reject { |item| comparison.include?(item) }
end

def empty_array?(array)
  # return true if the array is empty
  array.empty?
end

def reverse(array)
  # return the reverse of the array
  array.reverse  # or array.reverse!
end

def array_length(array)
  # return the length of the array
  array.length
end

def include?(array, value)
  # return true if the array includes the value
  array.include?(value)
end

def join(array, separator)
  # return the result of joining the array with the separator
  array.join(separator)  # or array * separator
end