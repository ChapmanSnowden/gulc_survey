post '/create' do
  
  user = User.new(name: params[:name], email: params[:email])
  user.password = params[:password]
  user.save!

  redirect '/' ##bug
end

post '/login' do
  @user = User.authenticate(params[:email], params[:password])
  
  if @user   
    session[:user_id] = @user.id
    erb :dashboard
  else
    redirect '/'
  end

end

get '/logout' do 
  session.clear
  redirect '/'
end
