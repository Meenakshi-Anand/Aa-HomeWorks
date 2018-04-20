class Queue

  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar.unshift(el)
  end

  def dequeue
    @ivar.pop
  end

  def show
    puts @ivar
  end
end

if __FILE__ == $PROGRAM_NAME
  my_queue = Queue.new
  (1..10).each {|el| my_queue.enqueue(el)}
  puts "My new queue #{my_queue.show}"
  10.times do
    my_queue.dequeue
    puts "My dequeued queue :"
    my_queue.show
  end
end
