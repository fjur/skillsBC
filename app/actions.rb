# Homepage (Root path)
get '/' do
  erb :login, :layout => false
end
