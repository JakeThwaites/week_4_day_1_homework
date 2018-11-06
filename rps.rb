class RockPaperScissors

  def initialize()

  end


  def self.check_result(choice1, choice2)

    winning = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

    if choice1 == choice2
      puts "It's a draw"
    elsif winning[choice1] == choice2
      puts "You win!"
    elsif winning[choice2] == choice1
      puts "You lose!"
    else
      puts "It's a draw!"
    end
  end

end

game = RockPaperScissors.check_result("paper", "rock")
