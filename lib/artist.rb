require 'pry'
class Artist
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

    def new_song(name, genre)
        # attr_reader :name, :artist, :genre
        Song.new(name, self, genre)
    end
    
    def songs
        Song.all.select do |song_inst|
            song_inst.artist == self
        end
    end

    def genres
        Song.all.map do |song_inst|
           song_inst.genre
        end
    end


end