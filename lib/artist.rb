require 'pry'
class Artist
    attr_accessor :name, :songs
    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.select {|song| song.artist==self}
    end

    def add_song(song)
        song.artist=self
    end

    def self.find_or_create_by_name(passedname)
        if self.all.find{|artist| artist.name==passedname}
        self.all.find{|artist| artist.name==passedname}
        else
            self.new(passedname)
        end
    end

    def print_songs
        song_array=Song.all.select {|song| song.artist==self}
        song_array.each {|song| print "#{song.name}\n"}
    end
end