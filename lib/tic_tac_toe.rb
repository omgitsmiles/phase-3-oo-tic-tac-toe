class TicTacToe
    attr_accessor :board

    def initialize()
        @board = [" "," "," "," "," "," "," "," "," "]
    end

    WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [6,4,2]]
    
    def display_board
        puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
    end

    def input_to_index(string)
        input = string.to_i
        input -= 1
    end

    def move(location, player)
        board[location] = player 
    end
    
    def position_taken?(position)
        if board[position] != " "
            true
        else
            false
        end
    end

    def valid_move?(position)
        if position > 8 || position < 0
            false
        else
            if board[position] == " "
                true
            else
                false
            end
        end
    end

    def turn_count
        board_tally = board.tally
        board_tally["X"] + board_tally["O"]
    end
end































# class TicTacToe 

#     def initialize
#         @board = [" "," "," "," "," "," "," "," "," "]
#     end

#   WIN_COMBINATIONS = [
#     [0,1,2],
#     [3,4,5],
#     [6,7,8],
#     [0,3,6],
#     [1,4,7],
#     [2,5,8],
#     [0,4,8],
#     [6,4,2]
#   ]

#     def display_board
#         puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
#         puts "-----------"
#         puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
#         puts "-----------"
#         puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
#     end

#     def input_to_index(input)
#         input.to_i - 1
#     end

#     def move (index, token)
#         @board[index] = token
#     end
    
#     def position_taken?(index)
#         @board[index] != " "
#     end

#     def valid_move?(index)
#         !position_taken?(index) && index.between?(0, 8)
#     end

#     def turn_count(position_taken?)
#        # or  # @board.count(position_taken?)
#         @board.count{|square| sqaure != " "}
#     end

#     # def current_player
#     #     turn_count.even? ? "X" : "O"
#     # end
# end