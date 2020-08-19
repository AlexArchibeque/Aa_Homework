class Simon
  COLORS = %w(r b g y)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until self.game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    puts "Here is your sequence remember it well."
    puts show_sequence
    sleep(2)
    system("clear")
    require_sequence
    if !self.game_over
      round_success_message
      sleep(1)
      system("clear")
      self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color.join(" ")
  end

  def require_sequence
    puts "Show me the sequence"
    if gets.chomp.split(" ") != @seq
      @game_over = true
    end
  end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Good job!"
  end

  def game_over_message
    puts "Too Bad :("
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
    system("clear")
    puts "Would you like to play again?  (y/n)"
    if gets.chomp.downcase == "y"
      self.play
    else
      system("quit")
    end
  end
end

g = Simon.new

g.play