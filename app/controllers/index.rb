
get '/dashboard' do
  @all_surveys = Survey.all
  @user = User.find(session[:user_id])
  erb :dashboard
end


  
