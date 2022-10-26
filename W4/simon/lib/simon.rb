class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    take_turn
  end

  def take_turn
    until game_over
     yellow show_sequence
      round_success_message
      require_sequence
      self.sequence_length+= 1
    end
    game_over_message
    reset_game
  end

  def show_sequence
    add_random_color
    self.seq
  end

  def require_sequence

  end

  def add_random_color
    self.seq << COLORS.sample()
  end

  def round_success_message()

  end

  def game_over_message

  end

  def reset_game
    self.seq = []
    self.sequence_length = 1
    self.game_over = false
  end
end
