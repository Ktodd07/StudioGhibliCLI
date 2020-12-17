class API

   def self.get_data
        uri = URI("https://ghibliapi.herokuapp.com/films")
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
        data.each do |film|
            Films.new(film["title"], film["description"], film["director"], film["release_date"])
        end
    end

end
