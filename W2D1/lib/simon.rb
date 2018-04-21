class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize()
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    puts "Let start the game !"
    puts "Your first sequence"
    sleep(1)

    until @game_over == true
      take_turn
    end

    game_over_message
    reset_game

  end

  def take_turn


    show_sequence
    require_sequence

    unless game_over
      round_success_message
      @sequence_length += 1
    end



  end

  def show_sequence
    color_no = 0
    add_random_color

    @seq.each do |color|
      color_no += 1
      system("clear")
      puts "color #{color_no}"
      puts color
      sleep(1)
      system("clear")
    end

  end



  def require_sequence

    puts "Enter your sequence (Example : greeen,red,blue,yellow )"

    @seq.each do |color|
      user_color = gets.chomp
      if user_color != color
        puts "You entered the wrong color . "
        @game_over = true
        break
      end
    end

  end

  def add_random_color

    @seq << COLORS.sample

  end

  def round_success_message

    puts "You guessed the right sequence : Round Over"
    sleep(1)

  end

  def game_over_message

    puts "You crossed #{sequence_length-1} levels . Congratulations!"

  end


  def reset_game

      @sequence_length = 1
      @game_over = false
      @seq = []

  end

end

if __FILE__ == $PROGRAM_NAME
  game = Simon.new
  game.play
end
