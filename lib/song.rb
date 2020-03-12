require 'pry'
class Song
    attr_accessor :name, :artist
    @@all=[]
    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def self.new_by_filename(filename)
        name=filename.delete('.mp3')
        name=name.split(' - ')
        newsong=self.new(name[1])
        newsong.artist=Artist.find_or_create_by_name(name[0])
        newsong
    end

    def artist_name=(name)
        self.artist=Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end

end