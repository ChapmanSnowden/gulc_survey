get '/' do
  erb :index
end

get '/dashboard' do
  erb :dashboard
end

get '/surveys/new' do
  erb :create_survey
end

post '/surveys' do
  session[:id] = 1 #delete later
  user = User.find(session[:id])
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
