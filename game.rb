class Game
  attr_accessor :current_player, :num1, :num2

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @players = [@player1, @player2].shuffle
    @current_player = @players[0]
  end

  def questions
    @num1 = rand(1...10)
    @num2 = rand(1...10)
    @answer = @num1 + @num2
  end

  def next_round
    puts "---------- NEXT ----------"
    puts "#{@current_player.name}: What does #{num1} plus #{num2} equal?"
    print 'Answer is: '
  end

  def game_status
    puts '--------- STATUS ---------'
    @players.each { |player| puts "#{player.name} Lives: #{player.lives}/3"}
    puts '--------------------------'
  end

  def game_over
    puts "--------- GAME OVER ---------"
    puts "Good Bye!"
    puts "-----------------------------"
    exit 0
  end

  def winner?
    if @player1.lives.zero?
      puts '-------- WINNER ---------'
      puts "#{@player2.name} is the winner with #{player2.lives}/3"
      puts '-------------------------'
      game_over
    elsif @player2.lives.zero?
      puts '-------- WINNER ---------'
      puts "#{@player1.name} is the winner with #{player1.lives}/3"
      puts '-------------------------'
      game_over
    end
  end
  
end