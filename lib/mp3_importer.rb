require 'pry'
class MP3Importer
attr_accessor :path
def initialize(path)
    @path=path
end

def files
    files_array=Dir.entries(@path)
    files_array.delete_if {|entry| entry.size<=2}
    files_array
end
def import
    list_of_filenames= self.files
    list_of_filenames.each{ |filename| Song.new_by_filename(filename)}
  end
end