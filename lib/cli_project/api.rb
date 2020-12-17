class API

   def self.get_data
        uri = URI("https://ghibliapi.herokuapp.com/films")
        data = Net::HTTP.get(uri)
        response = JSON.parse(data)
        response.each do |film|
            Films.new(film["title"], film["description"], film["director"], film["release_date"])
        end
    end

end
