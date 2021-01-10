#What do you want you object model to look like

class GetBored

    @@all = []

    attr_accessor :text, :createdAt

    
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
