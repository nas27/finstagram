#can be called from any page (DRY :))
helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do
  @finstagram_posts = FinstagramPost.order(created_at: :desc)
  erb(:index)
end





get '/users' do
  #renders the users view
  @users = User.all
  erb(:users)
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb(:user)
end

get '/users/:id/edit' do
#to do
end


get '/signup' do #when a user navigates to url path/signup
  @user = User.new #create new empty user obj
  erb(:signup)
end



post '/signup' do
  email      = params[:email]
  avatar_url = params[:avatar_url]
  username   = params[:username]
  password   = params[:password]

  #below grabs the user details from the parameters
  @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })

  if @user.save
    redirect to('/login')
  else
    erb(:signup)
  end
end

#watches for get requests for login page
#render the login.erb view
get '/login' do 
  erb(:login) 
end

post '/login' do
  username = params[:username]
  password = params[:password]

  @user = User.find_by(username: username)

  if @user && @user.password == password
    session[:user_id] = @user.id
    redirect to('/')
    #"Success! User with id #{session[:user_id]} is logged in!"
  
  else
    @error_message = "Login failed."
    erb(:login)
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect to('/')
end
get '/finstagram_posts/new' do
  @finstagram_post = FinstagramPost.new
  erb(:"finstagram_posts/new")
end


get '/finstagram_posts/:id' do
  @finstagram_post = FinstagramPost.find(params[:id])   # find the post with the ID from the URL
  erb(:"finstagram_posts/show")               # render .../show.erb
end


post '/finstagram_posts' do
  photo_url = params[:photo_url]

  #instantiate a new FP
  @finstagram_post = FinstagramPost.new({photo_url: photo_url, user_id: current_user.id})

  #if post validaties, save it
  if @finstagram_post.save
    redirect(to('/'))
  else

    erb(:"finstagram_posts/new")
  end
end
