module Enumerable
  # Your code goes here
  def my_each
    # Complete code here
    self.each do |element|
      return element if yield(element)
    end
    nil
  end
end

a=[1,2,3,4,5]
puts a.my_each { |x| x > 3 }

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end
