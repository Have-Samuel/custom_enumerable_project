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

# My_SELECT
def my_select
  array = []
  i = 0
  until i == self.length do 
    array << self[i] if yield(self[i])
    i += 1
  end
  array
end

# MY_ALL?
def my_all?(arr)
  result = true
  i = 0
  until i == arr.length do
    i += 1
  end
  result
end

my_all?(arr) { |i| i < 100 }
puts my_all?(arr) { |i| i < 100 }

# ANY?
def my_any?(arr)
  result = false
  i = 0
  until i == arr.length do
    result = true if yield(arr[i] )
    i += 1
  end
  result
end

puts my_any?(arr) { |i| i > 100 }
my_any?(arr) { |i| i > 100 }

# NONE?
def my_none?(arr)
  result = true
  i = 0
  until i == arr.length do 
    result = false if yield(arr[i])
    i += 1
  end
  result
end

puts arr.none? { |i| i > 10 }
my_none?(arr) { |i| i > 10 }

# COUNT
def my_count
  count = 0
  i = 0
  until i == self.length do 
    count += 1 if yield(self[i])
    i += 1
  end
  count
end

puts arr.count { |i| i > 5 }
my_count(arr) { |i| i > 5 }

# MAP
def my_map
  new_array = []
  i = 0
  until i == self.length do 
    new_array << yield(self[i])
    i += 1
  end
  new_array
end

