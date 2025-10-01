arr = [1,2,3,4,5,6,7,8,9,10]

# My_EACH
# Your code goes here
def my_each
    i = 0
    # Complete code here
  until i == arr.length
    yield(arr[i])
      i += 1
  end
end 

my_each(arr) { |i| puts i * 2 }
my_each(arr)

# My_EACH_WITH_INDEX
def my_each_with_index
  i = 0
  until i == self.length
    yield(self[i], i)
    i += 1
  end
end