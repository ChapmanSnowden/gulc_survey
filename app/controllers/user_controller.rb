get '/' do
  @errors = session.delete(:error_message) || []
  @user = User.find(session[:user_id]) if session[:user_id]
  @all_surveys = Survey.all || []
  if @user
    @unanswered_surveys = (@all_surveys - Survey.where(:id => @user.completed_surveys.map(&:survey_id)))
    erb :dashboard
  else
    erb :index
  end
end

post '/create' do
  if taken?(params[:email])
    session[:error_message] = ["That email address has already been registered."]
    redirect '/'
  else
    @user = User.new(name: params[:name], email: params[:email])
    @user.password = params[:password]
    @user.save!

    session[:user_id] = @user.id

    redirect '/'
  end
end

post '/login' do
  user = User.authenticate(params[:email], params[:password])
  puts params[:email]
  puts params[:password]
  puts User.authenticate(params[:email], params[:password])
  if user   
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/'
  end

end

get '/logout' do 
  session.clear
  redirect '/'
end
