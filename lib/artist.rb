require 'pry'

class Artist
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        Song.all.select{|songs| songs.artist == self}
    end

    def self.find_or_create_by_name(name)
        self.find(name) ? self.find(name) : self.new(name)
    end

    def self.find(name)
        self.all.find{|artists| artists.name == name}
    end

    def print_songs
      songs.each{|songs| puts songs.name}
    end

end


# artist1 = Artist.new("Joshua")
# song1 = Song.new("lalala")
# artist1.add_song(song1)