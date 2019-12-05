class User < ActiveRecord::Base 
    has_many :user_resorts
    has_many :users, through: :user_resorts
end