# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 4, 8], # left to right Diagonal
  [2, 4, 6], #right to left diagonal
  [0, 3, 6], #left column
  [1, 4, 7], #center column
  [2, 5, 8] #right column
]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    return combination.select{|index|  board[index] == "X"}
  end
end
