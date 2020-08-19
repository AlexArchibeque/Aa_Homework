class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13
      4.times do
        cup << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 12 || start_pos < 0
    raise "Starting cup is empty" if self.cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    new_cup = self.cups[start_pos]
    self.cups[start_pos] = []

    

    cup_idx = start_pos
    until new_cup.empty?
      cup_idx += 1
      cup_idx = 0 if cup_idx > 13

      if cup_idx == 6
        @cups[cup_idx] << new_cup.shift if current_player_name == @name1
      elsif cup_idx == 13
        @cups[cup_idx] << new_cup.shift if current_player_name == @name2
      else
        @cups[cup_idx] << new_cup.shift
      end 
    end
    


    self.render
    self.next_turn(cup_idx)

  end

  def next_turn(ending_cup_idx)

    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif self.cups[ending_cup_idx].length == 1
      :switch
    else
      ending_cup_idx
    end

  end

  def render
    # print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    # puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    # print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    # puts ""
    # puts ""
  end

  def one_side_empty?
    if (0..5).all? { |i| self.cups[i].length == 0 } || (7..12).all? {|i| self.cups[i].length == 0 }
        return true
    else
      false
    end
  end

  def winner
    if self.cups[6].length == self.cups[13].length
      :draw
    else
      if self.cups[6].length > self.cups[13].length
        return @name1
      else
        return @name2
      end
    end
  end
end
