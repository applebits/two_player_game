class InvalidGuessError < StandardError
end

class String 
  def numeric?
    Float(self) != nil rescue false
  end
end

def generate_question
  num_1 = rand(200)
  num_2 = rand(200)
  puts "What is #{num_1} + #{num_2}?"
  answer = num_1 + num_2 
  answer
end

def prompt_player
  user_answer = gets.chomp
  raise InvalidGuessError, "Guess must be an Integer eg. 205" unless  user_answer.numeric?
  user_answer
  end

def verify_answer(answer, user_answer)

  if answer == user_answer
    result = true
  else result = false
  end
  result
end

