def sluggish_octopus(array)
  (0...array.length).each do |idx1|
    (idx1+1...array.length).each do |idx2|
      if (array[idx1].length>array[idx1].length)
        array[idx1],array[idx2]=array[idx2],array[idx1]
      end
    end
  end
  array.last
end
puts ("Sluggish Octopus :")
puts sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])


def dominant_octopus(array)

  return array if array.length <= 1
  pivot = [array.first]
  left = array.select{|el| el.length < array.first.length}
  right = array.select{|el| el.length > array.first.length}
  dominant_octopus(left)+pivot+dominant_octopus(right)

end
puts ("Dominant Octopus :")
puts dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']).last

def clever_octopus(array)
  biggest = ""
  array.each do |el|
    biggest = el if el.length > biggest.length
  end
  biggest
end

puts ("Clever Octopus :")
puts clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
