# Homepage (Root path)
get '/' do
  erb :login, :layout => false
end

get '/index' do
  @photos = Array.new
  erb :index, :layout => false
end
