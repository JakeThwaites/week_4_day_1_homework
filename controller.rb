require('sinatra')
require ('sinatra/contrib/all') if development?
require_relative('models/rps')
also_reload('./models/*')

get '/:choice1/:choice2' do
  first_choice = params[:choice1].to_s
  second_choice = params[:choice2].to_s

  @calcuation = RockPaperScissors.check_result(first_choice, second_choice)
  erb(:result)
end

get '/' do
  erb(:home)
end
