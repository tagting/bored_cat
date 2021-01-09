class API

    def self.get_data
        response = RestClient.get('http://www.boredapi.com/api/activity/')
        activity_array = JSON.parse(response)
        activity_array.each do |activity|
            GetBored.new(activity)
        end
       
    end

end