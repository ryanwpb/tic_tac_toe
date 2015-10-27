class Player
  attr_reader :name, :player1, :player2

  def initialize(name, board)
    @name = name
    @board = board
  end
end
