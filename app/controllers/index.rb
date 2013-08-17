get '/' do
  erb :index
end

get '/dashboard' do
  @all_surveys = Survey.all
  @user = User.find(session[:user_id])
  erb :dashboard
end

get '/surveys/new' do
  erb :create_survey
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])
  erb :show_survey
end

post '/surveys' do
  user = User.find(session[:user_id])
  @survey = Survey.create(user: user, name: params[:name])
  @id = @survey.id

  erb :_new_question
end

post '/surveys/:id/questions/new' do |id|
  @survey = Survey.find(id)
  question = @survey.questions.create(prompt: params[:prompt])
  question.choices.create(content: params[:choice_1])
  question.choices.create(content: params[:choice_2])
  question.choices.create(content: params[:choice_3])
  @id = @survey.id
  
  erb :_new_question
end

post '/answers' do
  p params
  # params.each do |answer|
  #   # Answer.create()
  # end

end
  
