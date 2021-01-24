#What do you want you object model to look like
require 'pry'
class GetBored

    @@all = []

    attr_accessor :text, :createdAt, :_id

    def rating
        @rating
    end

    def rating=(rating)
        @rating = rating
    end
    
    def initialize(cat_hash)
        cat_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end 
        save
    end   

    def save
        @@all << self
    end

    def self.all #to read the result
        @@all
    end
   

end
