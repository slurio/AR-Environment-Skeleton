class Apple < ActiveRecord::Base
    belongs_to :teacher

    def self.apples_ripe
        self.where(status: "ripe")
    end
end