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
        Song.all.select{|song_objects|
            if song_objects.artist == self #is it a string or object? 
                song_objects
            end
    }
    end

    def self.find_or_create_by_name(name)
        if Artist.all.find{|artist| artist.name == name} 
            Artist.all.find{|artist| artist.name == name}
        else
            Artist.new(name)
        end
    end

    def print_songs
        puts self.songs.map{|song_object| song_object.name}
    end
end

