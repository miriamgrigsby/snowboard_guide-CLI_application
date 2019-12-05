class Resort < ActiveRecord::Base 
    has_many :user_resorts
    has_many :users, through: :user_resorts
    has_many :tickets
    has_many :lessons
    has_many :gears
    has_many :hotels
end