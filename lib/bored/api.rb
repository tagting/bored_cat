class API

    def self.get_data
        response = RestClient.get('http://www.boredapi.com/api/activity/')
        activity_array = JSON.parse(response) #convert to json
    end
end