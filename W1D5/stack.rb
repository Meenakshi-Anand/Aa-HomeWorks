class Stack

   def initialize
     @ivar = []
     # create ivar to store stack here!
   end

   def add(el)
     @ivar << el
     # adds an element to the stack
   end

   def remove
     @ivar.pop
     # removes one element from the stack
   end

   def show
     puts @ivar
     # return a copy of the stack
   end
 end

 if __FILE__ == $PROGRAM_NAME
   my_stack = Stack.new
   (1..10).each {|el| my_stack.add(el)}
   puts "My new stack #{my_stack.show}"
   10.times do
     my_stack.remove
     puts "My poped stack :"
     my_stack.show
   end
 end
