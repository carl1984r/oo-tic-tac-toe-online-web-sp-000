class TicTacToe
def initialize(board=Array.new(9, " "))
  @board = board
end

attr_accessor = :board

WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def move(input_to_index, current_player="X")
  @board[input_to_index] = current_player
end

def position_taken?(input_to_index)
  if  @board[input_to_index] != "X" && @board[input_to_index] != "O"
      return false
  else
      @board[input_to_index] == "X" && @board[input_to_index] == "O"
      return true
  end
end

def valid_move?(input_to_index)
   if position_taken?(input_to_index) == false && input_to_index.between?(0, 8)
      return true
   else
      position_taken?(input_to_index) == true
      return false
  end
  end

  def turn_count
       @board.count do |v|
         v == "X" || v == "O"
       end
  end

def current_player
if turn_count % 2 == 0
     return "X"
  else
     return "O"
  end
end

def turn
  puts "Please enter 1-9:"
  input = gets
  input_to_index(input)
  current_player




  end

end
