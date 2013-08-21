#CODE REVIEW: Use restful routes.

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
  #CODE REVIEW : Move validation to the model.  Why are you storing error messages in a session? They are available on the model. 

  if taken?(params[:email])
    session[:error_message] = ["That email address has already been registered."]
  else
    @user = User.new(name: params[:name], email: params[:email])
    @user.password = params[:password]
    @user.save!

    session[:user_id] = @user.id

  end

  redirect '/'
end

post '/login' do
  #CODE REVIEW: Create a login helper method
  
  user = User.authenticate(params[:email], params[:password])
  session[:user_id] = user.id if user   

  redirect '/'
end

get '/logout' do 
  session.clear

  redirect '/'
end
