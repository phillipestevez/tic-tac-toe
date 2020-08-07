# Create a gameboard with 9 empty squares
# Display gameboard in command line
# Create a player 1 (x) class and a player 2/cpu (o class)
# The game ends when either one of the players has 3 pieces in a row or the board is full

class Gameboard
    attr_accessor :game_array
    attr_accessor :win_trigger
    attr_accessor :plr1_win_check
    attr_accessor :plr2_win_check
    attr_accessor :win_array

    def initialize
        @game_array = Array.new(9, '#')
        @player_hash = {}
        @win_trigger = 'false'
        @plr1_win_check = []
        @plr2_win_check = []
        @win_array = [[0, 1, 2], [0, 3, 6], [0, 4, 8], [1, 4, 7], [2, 5, 8], [2, 4, 6], [3, 4, 5], [6, 7, 8]]
    end

    def intro_text
        puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*\n\n"
        puts "Let's Play Tic Tac Toe!\n\n"
        puts "Each space on the game board is represented by a number:\n\n"
        puts "#{reference_board}"
        puts "Good Luck!\n\n"
        puts "*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*~*\n\n"
    end

    public
    def players
        @i = 0
        until @i > 1
            puts "Player #{@player_hash.length + 1}, What is your name?"
            name = gets.chomp
            passname = @player_hash.select { |find_name| find_name == name }
            if passname.empty? == false
                name = name + "_2"
            end
            @i == 0? @player_hash[name] = '0' : @player_hash[name] = 'X'
            puts "\n\nPlayer #{@player_hash.keys[@i]} is: #{@player_hash.values[@i]}\n\n"
            @i += 1
        end
    end

    def show_board
        puts "\n\n #{game_array[0]} | #{game_array[1]} | #{game_array[2]} "
        puts "   #{game_array[3]} | #{game_array[4]} | #{game_array[5]} "
        puts "   #{game_array[6]} | #{game_array[7]} | #{game_array[8]} \n\n"
    end

    def reference_board
        puts "Reference board : \n\n"
        puts '   0 | 1 | 2 '
        puts '   3 | 4 | 5 '
        puts '   6 | 7 | 8 '
    end

end
