class API

    def self.get_data
        response = RestClient.get('http://www.boredapi.com/api/activity/')
        bored_data = JSON.parse(response)
        bored_data.each do |key, value|
            GetBored.new(key, value)

    
        end
        # response = RestClient.get('http://www.boredapi.com/api/activity/')
        # bored_data = JSON.parse(response).to_a
        # bored_data.each do |data|
        #     GetBored.new(data)
        # end
        # response = RestClient.get('http://www.boredapi.com/api/activity/')
        # bored_data = JSON.parse(response).to_a
        # bored_data.each do |data|
        #     data.each do |d|
        #         GetBored.new(d)
        #     end
        # end

       


       
            # activities.each do |act|
            #     GetBored.new(act)
            # end
        
        #     GetBored.new(v)
        #     #GetBored.new(act["activity"], act["accessibility"], act["type"], act["participants"], act["price"], act["link"], act["key"])    
        # end
        # activities = JSON.parse(response)
        # activities.each do |key, array|
        #     binding.pry
         
            #GetBored.new(key[array])
        #end
        #activities.each do |act|
            #binding.pry
            #activity, accessibility, type, participants, price, link, key
            #GetBored.new(act["activity"], act["accessibility"], act["type"], act["participants"], act["price"], act["link"], act["key"])
            #GetBored.new(act)
    
    end
end