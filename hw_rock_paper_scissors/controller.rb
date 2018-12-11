require('sinatra')
require('sinatra/contrib/all')
require_relative('models/rps_model')
also_reload('./models/*')


get '/' do
  erb( :home )
end

get '/rules' do
  erb( :rules )
end

get '/:hand1/:hand2' do
  @result = RPSGame.check_win( params[:hand1], params[:hand2] )
  erb( :play )
end
