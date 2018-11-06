require('sinatra')
require ('sinatra/contrib/all') if development?
require_relative('models/rps')
also_reload('./models/*')

get '/multiplayer/:choice1/:choice2' do
  first_choice = params[:choice1].to_s
  second_choice = params[:choice2].to_s

  @calculation = RockPaperScissors.check_result__multiplayer(first_choice, second_choice)
  erb(:multiplayer_result)
end

get '/single-player/:choice' do
  player_choice = params[:choice].to_s
  @singeplayer_calc = RockPaperScissors.check_result__single_player(player_choice)
  erb(:singleplayer_result)
end

get '/' do
  erb(:home)
end

get '/multiplayer' do
  erb(:multiplayer)
end

get '/single-player' do
  erb(:single_player)
end
