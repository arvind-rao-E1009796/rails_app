class Student < ActiveRecord::Base
    validates :first_name, :last_name, :email, :presence => true
    has_many :blogs
end
