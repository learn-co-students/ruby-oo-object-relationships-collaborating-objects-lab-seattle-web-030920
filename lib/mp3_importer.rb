class MP3Importer
    attr_reader :path



 def initialize(path)
   @path = path
   
 end

 def files
    @files = Dir["#{path}/*.mp3"].collect {|files| files.gsub("#{path}/", "")}
    #binding.pry
 end

 def import 
    files.each{|files| Song.new_by_filename(files)}
 end


end