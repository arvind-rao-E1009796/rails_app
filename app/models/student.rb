class Student < ActiveRecord::Base
    after_create :display_message
    validates :first_name, :last_name, :email, :presence => true
    validates :email, :uniqueness => true
    validates :first_name, :last_name, length: {minimum: 1, maximum:10}
    validate :custom_validations_email
    has_many :blogs

    def full_name
        "#{first_name} #{last_name}"
    end

    private
    def display_message
        puts "Hello #{self.first_name} #{self.last_name}!!"
    end

    def custom_validations_email
        if self.email.include?('@')
            puts "valid email"
        else
            errors.add(:email, 'Invalid email ! Must include @')
        end
    end

end
