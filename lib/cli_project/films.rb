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

end
