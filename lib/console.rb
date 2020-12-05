require 'pry'
require_relative 'artist.rb'
require_relative 'song.rb'
require_relative 'mp3_importer.rb'

jayz = Artist.new("Jay-Z")

test = Song.new("Ima Test")

song_string = "Jay-Z - Crazy In Love"

new_song = Song.new_by_filename(song_string)
