require "./players"
require "./questions"


print "Enter your name Player 1: "
player1 = Player.new(gets.chomp)
print "Enter your name Player 2: "
player2 = Player.new(gets.chomp)

turn = 0

# start game session
while player1.stillAlive && player2.stillAlive do
  puts "---- NEW TURN ----"
  currentPlayer = (turn == 0) ? player1 : player2
  question = Question.new
  puts "#{currentPlayer.name}'s turn"
  question.askQuestion 
  answer = gets.chomp

  if (answer.to_i != question.answer)
    currentPlayer.lives -= 1
    puts "Whoops that's wrong"
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"

  else
    puts "You got it right!"
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"

  end

  turn = (turn + 1) % 2
end

if !player1.stillAlive || !player2.stillAlive
  puts "---- GAME OVER ----"
end

