#allows us to work with db via ActiveRecord, talk to db directly
class User < ActiveRecord::Base
    has_many :finstagram_posts
    has_many :comments
    has_many :likes
end