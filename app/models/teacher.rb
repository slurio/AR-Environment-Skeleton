class Teacher < ActiveRecord::Base
    has_many :grade_levels
    has_many :students,through: :grade_levels
    has_many :apples

    def tenure
        self.years_of_experience > 5 #need in string?
    end

    def apple_count
        self.apples.count
    end

    def how_many_apples?
        puts "#{self.last_name} has #{self.apple_count} apples!"
    end

    def apples_ready_to_eat
        #apples.select do |apple|
         #   apple.status == "ripe"
        #end
        Apple.all.where(status: "ripe")
    end

    def eat_apple(apple)
        self.apples.select do |a|
           if a.status == "ripe" && apple == a
               a.destroy
               puts "Yum!"
           elsif a.status != "ripe" && apple == a
               puts "Apple is not ripe :("
            end
        end
    end
end