class Student < ActiveRecord::Base
    
    belongs_to :teacher

    def full_name
        self.first_name + " " + self.last_name
    end

    def self.all_in(grade)
        Student.where(grade_level: grade)
    end
end