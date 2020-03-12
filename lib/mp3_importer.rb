class MP3Importer
  attr_accessor :file_path

  def initialize(file_path)
    @file_path = file_path
  end

  def path
    @file_path
  end

  def files
    @files ||= Dir.children(@file_path)
  end

  def import
    files.each{|f| Song.new_by_filename(f)}
  end
end
