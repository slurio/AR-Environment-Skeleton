class Locker < ActiveRecord::Base
    belongs_to :student

    def remove_book(num=1)
        if self.book_count - num < 0
            "You don't have that many books to be removed."
        elsif self.book_count.between?(1,5)
            self.book_count -= num; self.save
            "Removed #{num} book(s) from your locker."
        end
    end

    def add_book(num=1)
        if self.book_count.between?(0,4) && self.book_count + num < 6
            self.book_count += num; self.save
            "Added #{num} book(s) to your locker."
        else
            "There is no room to add #{num} book(s)."
        end
    end

    def clean_out
        self.book_count = 0
        self.save
    end

    def self.first_available
        self.all.find_by(student_id: nil)
    end

    def self.clean_all
        self.all.each do |locker|
            locker.book_count = 0
            locker.save
        end
    end

end