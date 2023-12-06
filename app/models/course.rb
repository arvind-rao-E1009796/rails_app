class Course < ActiveRecord::Base
    
    before_create :greetings_message_start
    after_save :greetings_message_end

    private
    def greetings_message_start
        puts "Creating courses..."
    end
    def greetings_message_end
        puts "Created Successfully!"
    end
end


