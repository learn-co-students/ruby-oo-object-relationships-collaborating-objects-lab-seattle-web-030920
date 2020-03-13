class MP3Importer
    attr_accessor :path
    @@all = []

    def initialize(path)
        
        @path = path 
        
        @@all << self 
    end 



    def files
        m = Dir.children(@path)
    end 

    def import 
        self.files.map{|mp3_file| 
            Song.new_by_filename(mp3_file)
    }
    end

end 

