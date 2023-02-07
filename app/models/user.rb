#allows us to work with db via ActiveRecord, talk to db directly
class User < ActiveRecord::Base
    has_many :finstagram_posts
    has_many :comments
    has_many :likes

    #checks the parameters entered by user
    validates :email, :username, uniqueness: true
    validates :email, :avatar_url, :username, :password, presence: true

end