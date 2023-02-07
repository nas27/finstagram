get '/' do
  @finstagram_posts = FinstagramPost.order(created_at: :desc)  
  erb(:index)
end

get '/signup' do #when a user navigates to url path/signup
  @user = User.new #create new empty user obj
  erb(:signup)
end

post '/signup' do
  email      = params[:email]
  avatar_url = params[:avatar_url]
  username = params[:username]
  password   = params[:password]


 
  
   # instantiate and save a NEW User
   @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })

  # ActiveRecord manages input validations as defined in user.rb
  #If fail, assigns errors to the user's errors attribute, and error messages to user.errors.full_messages then returns false.
  #If passes it saves user to the database and returns true
   if @user.save
      "User #{username} saved"
   else
      erb(:signup)
   end
 
   # return user obj in a readable format so that < isnt interpretted as a tag
   #escape_html user.inspect

  #else
  #  escape_html user.errors.full_messages
  #end
  
  #quick test check for user creation
  #if username.present? && avatar.present?
  #  User.create({username: username, avatar_url: avatar})
  #  "USER was created (#{username})"
  #else
  #  "something went wrong"
  #end

  
end


get '/login' do
  erb(:login)
end








