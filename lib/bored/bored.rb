#What do you want you object model to look like

class GetBored

    @@all = []

    attr_accessor :text

    # def initialize(cat_hash)
    #     @activity = activity
    #     # @accessibility = accessibility
    #     # @type = type
    #     # @participants = participants
    #     # @price = price
    #     # @link = link
    #     # @key = key
    #     save
    # end
    
    def initialize(cat_hash)
        cat_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end 
        save
    end   

    # def initialize(activity, accessibility, type, participants, price, link, key)
    #     @activity = activity
    #     @accessibility = accessibility
    #     @type = type
    #     @participants = participants
    #     @price = price
    #     @link = link
    #     @key = key
    #     save
    # end

    def save
        @@all << self
    end

    def self.all #to read the result
        @@all
    end

    #deal with entire class = class method
    #this is a class method
    #but if dealing with one object = instance method

   

end
