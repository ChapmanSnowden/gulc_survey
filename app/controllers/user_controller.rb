post '/create' do
  @user = User.new(name: params[:name], email: params[:email])
  @user.password = params[:password]
  @user.save!

  session[:user_id] = @user.id

  @all_surveys = Survey.all

  erb :dashboard
end

post '/login' do
  @user = User.authenticate(params[:email], params[:password])
  @all_surveys = Survey.all

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
