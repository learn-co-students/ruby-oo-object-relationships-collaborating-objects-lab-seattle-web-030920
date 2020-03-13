require 'pry'

class MP3Importer

    attr_accessor :path
    @@all = []

    def initialize (path)
        @path = path
        @@all << self
    end

    def files
        Dir[path + "/*.mp3"].map{ |fullpath| File.basename(fullpath) }
    end

    def import 
        files.each {|item| Song.new_by_filename(item)}
    end

end