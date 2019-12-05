class UserResort < ActiveRecord::Base
    belongs_to :user
    belongs_to :resort
end