require 'pry'
class Song
attr_accessor :name, :artist
@@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def name=(name)
        @name = name
    end

    def self.all
        @@all
    end

    def self.new_by_filename(file_name)
        #file_name = 'Michael Jackson - Black or White - pop.mp3'
       file_name_array = file_name.split(' - ')
       a = file_name_array[0]
       title = file_name_array[1]
       
       new_song = Song.new(title)
       new_song.artist = Artist.find_or_create_by_name(a)
       new_song
    end
    def artist_name=(name)
       person = Artist.find_or_create_by_name(name)
       self.artist = person
       self.artist.name
      end

end