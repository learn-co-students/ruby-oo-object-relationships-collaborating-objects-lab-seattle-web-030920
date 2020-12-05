class MP3Importer
    attr_accessor :path, :song

    def initialize(file_path)
        @path = file_path
    end

    def files
    
         ["Action Bronson - Larry Csonka - indie.mp3",
        "Real Estate - Green Aisles - country.mp3", 
        "Real Estate - It's Real - hip-hop.mp3",
        "Thundercat - For Love I Come - dance.mp3"]
    end
    
    def import
        files.each{|file| Song.new_by_filename(file)}
    end

end