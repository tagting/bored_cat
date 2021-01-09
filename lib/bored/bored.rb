#What do you want you object model to look like

class GetBored

    @@all = []

    attr_accessor :activity, :accessibility, :type, :participants, :price, :link, :key 

    def initialize(activity, accessibility, type, participants, price, link, key)
        @activity = activity
        @accessibility = accessibility
        @type = type
        @participants = participants
        @price = price
        @link = link
        @key = key
        save
    end

    def save
        @@all <<self
    end

    def self.all #to read the
        @@all
    end
end