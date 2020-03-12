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

    def artist_name=(new_artist_name)
        found = false
        Artist.all.find do |artist|
            if artist.name == new_artist_name
                self.artist = artist
                found = true
            end
        end
        if !found
            new_artist = Artist.new(new_artist_name)
            self.artist = new_artist
        end
    end

    def self.new_by_filename(filename)
        array = filename.split("-")
        new_artist = Artist.new(array[0].strip)
        new_song = Song.new(array[1].strip)
        new_song.artist = new_artist
        new_song
    end
end