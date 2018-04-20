class Map

  def initialize
    @ivar = Array.new { Array.new }
  end

  def assign(key, value)
     unless @ivar.any?{|sub_arr| sub_arr.first == key}
       @ivar << [key,value]
     else
       @ivar.each_with_index do |sub_arr,idx|
         @ivar[idx] << value if sub_arr.first == key && sub_arr.last == nil
       end
     end
  end

  def lookup(key)
    @ivar.each do |sub_arr|
      return sub_arr.last if sub_arr.first == key
    end
  end

  def show
    puts "#{@ivar}"
  end

  def remove(key)
    @ivar.each do |sub_arr|
      @ivar.delete(sub_arr) if sub_arr.first == key
    end
  end

end

if __FILE__ == $PROGRAM_NAME
  my_map = Map.new
  (1..10).to_a.each_with_index {|el,idx| my_map.assign(idx,el)}
  puts "Element with key 5 "
  puts my_map.lookup(5)
  puts "add element with already existing key"
  my_map.assign(10,nil)
  my_map.assign(10,99999)
  puts "My new map #{my_map.show}"
  (0..9).to_a.shuffle.each do |key|
    my_map.remove(key)
    puts "My removed map :"
    my_map.show
  end
end
