# Homepage (Root path)

helpers do

  def current_user
    if session[:user_id];
      User.find(session[:user_id]);
    end
  end
end


get '/' do
  erb :index
end

get '/login' do
  erb: 
end

get '/signup' do
  
end
