class Song
  require 'artist.rb'
    attr_accessor :artist, :name, :genre
   
    @@all = []
   
    def initialize(name, genre=nil)
      @name = name
      @genre = genre
      save
    end
   
    def save
      @@all << self
    end
   
    def self.all
      @@all
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end
    
    def self.new_by_filename(filename)
      artist, song = filename.split(" - ")
      new_song = self.new(song)
      new_song.artist_name = artist
      new_song
    end

  end