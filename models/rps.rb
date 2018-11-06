class RockPaperScissors

  def initialize()

  end


  def self.check_result(choice1, choice2)

    winning = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

    if choice1 == choice2
      return "It's a draw"
    elsif winning[choice1] == choice2
      return "Player 1 plays #{choice1}. Player 1 wins!"
    elsif winning[choice2] == choice1
      return "Player 2 plays #{choice2}. Player 2 wins!"
    else
      return "These options aren't valid!"
    end
  end

end

game = RockPaperScissors.check_result("paper", "rock")
