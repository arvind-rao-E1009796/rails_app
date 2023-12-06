class Student < ActiveRecord::Base
    after_create :display_message
    validates :first_name, :last_name, :email, :presence => true
    has_many :blogs
    private
    def display_message
        puts "Hello #{self.first_name} #{self.last_name}!!"
    end
end
