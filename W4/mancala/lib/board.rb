class Board
  attr_accessor :cups

  def initialize(name1, name2)
      @cups = Array.new(14){Array.new([])}
      
      @cups.each.with_index do |cup, i|
        next if i == 6 || i == 13
        @cups[i] = place_stones(cup)

      end
  end

  def place_stones(cup, num_stones = 4)
      num_stones.times do
        cup << :stone
      end

      cup
  end

  def valid_move?(start_pos)

    
    
    if start_pos < 0|| start_pos >= @cups.length
      raise ArgumentError.new "Invalid starting cup"
    end

    if @cups[start_pos] == []
      raise ArgumentError.new "Starting cup is empty"
    end
    
  end

  def make_move(start_pos, current_player_name)
 
    distribute = @cups[start_pos].length
    (start_pos +1...start_pos + distribute).each do |i|
      @cups[i] << :stone

    end

  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
