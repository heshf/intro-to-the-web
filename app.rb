require 'sinatra'


get '/' do
  "Hello World"
end

get '/secret' do
	"sshh"
end

get '/ABC' do
	"DEF"
end

get '/random-cat' do
	@kitten_name = ["Amigo", "Oscar", "Viking"].sample
	erb(:index)
end

get '/named-cat' do
	p params
	@kitten_name = params[:kitten_name]
	erb(:index)
end

set :session_secret, 'super_secret'
