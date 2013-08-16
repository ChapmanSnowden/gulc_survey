get '/' do
  erb :index
end

get '/dashboard' do
  erb :dashboard
end

post '/surveys' do
  p params[:name]
  p params[:prompt]
end
