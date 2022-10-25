class Board
  attr_accessor :cups

  def initialize(name1, name2)
      @cups = Array.new(14){Array.new([])}
      
      @cups.each.with_index do |cup, i|
        next if i == 6 || i == 13
        @cups[i] = place_stones(cup)
      @name1 = name1
      @name2 = name2
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
 
    distribute = [] 
    distribute.push(*@cups[start_pos])
    @cups[start_pos] = []

    start = start_pos + 1
    
    while distribute != []
      if start == 13 
        start = 0
        next
      end
      @cups[start] << distribute.pop

      start += 1
    end
    next_turn(start)
    render
  end



  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 13 || ending_cup_idx == 6
      return :prompt
    
   

    elsif @cups[ending_cup_idx].count == 1
    return :switch

    else
      return ending_cup_idx
    end      
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    
    side_1 = @cups[0...6]
    side_2 = @cups[7...13]
    return true if side_1.all?{|i| i.length == 0} || side_2.all?{|i| i.length == 0}
    false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    return @name1 if @cups[6].length > @cups[13].length
    return @name2 if @cups[6].length < @cups[13].length
  end
end
