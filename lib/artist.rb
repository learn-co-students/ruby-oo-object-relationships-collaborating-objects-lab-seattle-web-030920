class Artist
    @@all = []

    attr_accessor :name
    def initialize(name)
        @name = name        
        @@all << self   
           
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|x| x.artist == self}                
    end

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(artist_to_find)
        tempArtist = Artist.all.find{|x| x.name == artist_to_find}
        if(nil == tempArtist)
            tempArtist = Artist.new(artist_to_find)
        end
        tempArtist        
    end

    def print_songs
        self.songs.each{|x| puts x.name}
    end
end