# Homepage (Root path)

helpers do

  def current_user
    if session[:user_id];
      User.find(session[:user_id]);
    end
  end

  def creating_user
    if session[:creating_user];
      User.find(session[:creating_user]);
    end
  end

end

get '/' do
  erb :login, :layout => false
  if !current_user
    redirect '/login'
  else
    erb :index
  end
end

get '/login' do
  if current_user
    redirect '/'
  else
    erb :login
  end
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.email == params[:email]
    session[:user_id] = @user.id
    redirect '/'
  else
    erb :login
  end

end

get '/logout' do
      session[:user_id] = nil

  if current_user
    session[:user_id] = nil
    redirect '/'
  else
    redirect '/'
  end
end

# get '/signup' do
#   erb :signup
# end

get '/signup/interests' do
  if creating_user
    erb :interests
  else
    redirect '/'
  end
end

post '/signup/interests' do
  if creating_user
    @user = User.find(session[:creating_user])
    # binding.pry
    @interest = Interest.create()
    @interest.user_id = @user.id
    @interest.save
    # @interest = @user.interest.create(params)
    # @interest.update
    session[:user_id] = @user.id
    session[:creating_user] = nil
    redirect '/'
  else
    redirect '/'
  end
end

post '/signup' do
  @user = User.create(params);
  # session[:user_id] = @user.id
  session[:creating_user] = @user.id 
  puts @user
  redirect '/signup/interests'
end

