require 'pry'
class Artist
attr_accessor :name
@@all = []

def initialize(name)
    @name =name
    @@all << self
end

def name=(name)
    @name = name
end

def self.all
@@all
end

def songs
Song.all.select { |s| s.artist == self}

end

def add_song(song)
    song.artist = self

end

def self.find_or_create_by_name(person)

found = @@all.find{|artist| artist.name == person}

if self.name != person && found == nil
      Artist.new(person)

else 
        found
end
end

def print_songs
songs.each{|i| puts i.name}
end
end