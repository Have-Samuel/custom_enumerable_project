# Final_Version
module Enumerable
  # Your code goes here
  def my_each_with_index
    if block_given?
      i = 0
      until i == self.length do 
        yield(self[i], i)
        i += 1
      end
    end
    self
  end

  # MY_SELECT
  def My_select
    if block_given?
      new_array = []
      my_each { |i| new_array << i if yield(i) }
      new_array
    else
      self
    end

    
  end
# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method

# After Re-factoring
class Array
  # Define my_each here
  def my_each
    if block_given?
      i = 0
      until i == self.length do 
        yield(self[i])
        i += 1
      end
    end
    self
  end
end
