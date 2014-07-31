require './lib/word'
require './lib/game'

def main_menu
    puts "***WELCOME TO HANGMAN***"
    puts "1: Start Game"
    puts "9: Exit"
    user_input = gets.chomp
    if user_input == '1'
      game
    elsif user_input == '9'
        exit
  end
end

  def game
    @new_game = Word.new
    @new_board = Game.new
    Word.word_market.keys.each { |key| puts key }
    puts "enter the category"
    input = gets.chomp
    @new_game.set_word(input)
    puts "wanna guess a letter? (y or n)"
    user_input = gets.chomp
    if user_input == "y"
      guess
    elsif user_input == "n"
      main_menu
    else
      puts "This is the wrong command"
      game
    end
  end

  def guess
    puts @new_game.display_word('')
    while @new_game.count < 7
      puts @new_board.board[@new_game.incorrect.length]
      puts "Guess a letter"
      user_guess= gets.chomp
      puts @new_game.display_word(user_guess)
      unless @new_game.status.include?('*')
        puts "YOU WIN!"
        main_menu
      end
    end
    if @new_game.count == 7
      puts "GAME OVER"
      puts @new_board.board[7]
      main_menu
    end
  end

main_menu
