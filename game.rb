class Game
  attr_accessor :current_player, :num1, :num2

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2].shuffle
    @current_player = @players[0]
  end

end