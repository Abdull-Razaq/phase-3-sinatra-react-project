class User <ActiveRecord::Base
    
    has_many :members
    has_many :projects, through: :members
    
end