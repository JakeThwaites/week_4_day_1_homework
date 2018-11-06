class RockPaperScissors

  def initialize()

  end


  def self.check_result__single_player(choice)

    options = ["rock", "paper", "scissors"]
    computer_choice = options.sample

    winning = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

    if choice == computer_choice
      return "It's a draw"
    elsif winning[choice] == computer_choice
      return "Player 1 wins by playing #{choice}!"
    elsif winning[computer_choice] == choice
      return "Computer wins by playing #{computer_choice}!"
    else
      return "These options aren't valid!"
    end
  end

  def self.check_result__multiplayer(choice1, choice2)

    winning = {"rock" => "scissors", "scissors" => "paper", "paper" => "rock"}

    if choice1 == choice2
      return "It's a draw"
    elsif winning[choice1] == choice2
      return "Player 1 wins by playing #{choice1}!"
    elsif winning[choice2] == choice1
      return "Player 2 wins by playing #{choice2}!"
    else
      return "These options aren't valid!"
    end
  end

end
