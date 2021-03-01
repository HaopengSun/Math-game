require './Player'
require './Question'
require './Correct'

player1 = Player.new('leo')
player2 = Player.new('alex')
current_ask = player1
current_answer = player2

while player1.is_alive and player2.is_alive
  question = Question.new(current_ask.name)
  puts question.ask
  user_answer = gets.chomp
  correct = Correct.new(user_answer, question.result)

  # return the result
  if correct.judge
    puts "#{current_ask.name}: YES! You are currect."
  else
    puts "#{current_ask.name}: Seriously? No!"
    current_answer.wrong_answer
  end
  puts "#{current_answer.name}: #{current_answer.life}/3   #{current_ask.name}: #{current_ask.life}/3"

  #swap two variables' values
  current_ask, current_answer = current_answer, current_ask
  puts "------NEW TURN------"
end

puts "some time later..."
if player1.is_alive
  puts "#{player1.name} wins with a score of #{player1.life}/3"
else
  puts "#{player2.name} wins with a score of #{player2.life}/3"
end
puts "------GAME OVER------"
puts "Goodbye!"