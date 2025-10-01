arr = [1,2,3,4,5]

# module Enumerable
  # Your code goes here
  def my_each
  i = 0
    # Complete code here
    until i == arr.length
      yield(arr[i])
      i += 1
    end
  end 
# end


my_each(arr) { |i| puts i * 2 }
my_each(arr)

def my_each_with_index
  i = 0
  until i == self.length
    yield(self[i], i)
    i += 1
  end
end
# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end
