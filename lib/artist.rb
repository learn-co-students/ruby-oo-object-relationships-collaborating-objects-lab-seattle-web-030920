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

    def songs
        result = []
        Song.all.select do |song|
            if song.artist == self
                result << song
            end
        end
        result
    end

    def add_song(new_song)
        new_song.artist = self
    end

    def self.find_or_create_by_name(new_name)
        found = false
        @@all.find do |artist|
            if artist.name == new_name
                return artist
                found = true
            end
        end
        if !found
            new_artist = Artist.new(new_name)
            new_artist
        end
    end

    def print_songs
        # result = self.songs
        # result.each {|song| puts song.name}
        self.songs.each {|song| puts song.name}
    end
end