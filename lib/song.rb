class Song

    @@all = []

    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name=(name)
        @artist = Artist.find_or_create_by_name(name)
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        artist = filename.split(" - ")[0]
        name = filename.split(" - ")[1]
        song = Song.new(name)
        song.artist_name = artist
        song
    end

end
