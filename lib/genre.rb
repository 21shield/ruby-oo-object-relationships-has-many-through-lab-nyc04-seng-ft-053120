class Genre
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def songs
        Song.all.select do |song_inst|
            song_inst.genre == self
        end
    end

    def artists
        Song.all.map do |song_inst|
            song_inst.artist
        end
    end
end