require 'pry'

class Artist

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def songs
        if Song.all
            Song.all.select {|song| song.artist == self}
        else
            []
        end
    end

    def print_songs
        self.songs.each {|song| puts "#{song.name}"}
    end

    def self.all
        @@all
    end

    def self.find_or_create_by_name(name)
        artist_with_name = @@all.find {|artist| artist.name == name}
        if artist_with_name
            artist_with_name
        else
            Artist.new(name)
        end
    end

end
