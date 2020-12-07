class Films

    attr_accessor :title, :description, :director, :release_date

    @@all = []

    def initialize(title, description, director, release_date)
        @title = title
        @description = description
        @director = director
        @release_date = release_date
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.select do |film|
            film.title.downcase == name
        end
    end

end