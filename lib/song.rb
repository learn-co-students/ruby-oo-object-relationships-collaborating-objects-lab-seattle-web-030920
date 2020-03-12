class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.new_by_filename(some_filename)
        val = some_filename.delete_suffix(".mp3").split('-')        
        new_instance = Song.new(val[1].strip)
        tempArtist = Artist.find_or_create_by_name(val[0].strip)  
        tempArtist.add_song(new_instance)        
        new_instance
        
    end

    def artist_name=(artist_name)
       @artist = Artist.find_or_create_by_name(artist_name)       
    end
end