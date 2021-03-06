def sluggish_octopus(array)
  sorted = true
  while sorted
    sorted = false
    (0...array.length).each do |idx1|
      (idx1+1...array.length).each do |idx2|
        if (array[idx1].length>array[idx1].length)
          array[idx1],array[idx2]=array[idx2],array[idx1]
          sorted = true
        end
      end
    end
  end
  array.last
end
puts ("Sluggish Octopus :")
puts sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


def dominant_search(array)

  return array if array.length <= 1
  pivot = [array.first]
  left = array.select{|el| el.length < array.first.length}
  right = array.select{|el| el.length > array.first.length}
  dominant_search(left)+pivot+dominant_search(right)

end

def dominant_octopus(array)
  dominant_search(array).last
end
puts ("Dominant Octopus :")
puts dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

def clever_octopus(array)
  biggest = ""
  array.each do |el|
    biggest = el if el.length > biggest.length
  end
  biggest
end

puts ("Clever Octopus :")
puts clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

def slow_dance(direction,tile_array)
  tile_array.each_with_index{|dir,idx| return idx if dir == direction}
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
puts ("Slow Dance")
puts slow_dance("up", tiles_array)
puts slow_dance("right-down", tiles_array)

def fast_dance(direction,tile_array)
  tile_array.index(direction)
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
puts ("Fast Dance")
puts slow_dance("up", tiles_array)
puts slow_dance("right-down", tiles_array)
