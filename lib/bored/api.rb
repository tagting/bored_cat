class API

    def self.get_data #JSON file validated
        response = RestClient.get('https://cat-fact.herokuapp.com/facts')
        cat_data = JSON.parse(response)
        cat_data.each do |cat|
            GetBored.new(cat)
        end
    end
end