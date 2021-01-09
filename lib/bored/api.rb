class API

    def self.get_data
       
        response = RestClient.get('http://www.boredapi.com/api/activity/')
     
    
        activities = JSON.parse(response)
        activities.each do |act|
            #activity
            GetBored.new(act[1])
        end
    end
end