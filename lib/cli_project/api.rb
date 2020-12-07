class API

    URL = "https://ghibliapi.herokuapp.com/"

    def self.get_data
        uri = URI("https://ghibliapi.herokuapp.com/films")
        response = Net::HTTP.get(uri)
        films = JSON.parse(response)
        films.each do |film|
            Films.new(film["title"], film["description"], film["director"], film["release_date"])
        end
    end

end