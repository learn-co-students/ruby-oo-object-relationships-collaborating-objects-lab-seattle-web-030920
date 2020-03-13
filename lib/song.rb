class Song
    attr_accessor :name, :artist 
    @@all = []

    def initialize(name = '')
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def artist_name=(artist)
        @artist = Artist.find_or_create_by_name(artist)
    end

    def self.new_by_filename(filename)
        song = Song.new 
        song.name = filename.split(" - ")[1]
        artist = filename.split(" - ")[0]
        song.artist_name = artist 
        song 
    end


  

end