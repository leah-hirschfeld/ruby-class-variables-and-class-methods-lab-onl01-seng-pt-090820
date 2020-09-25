class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artists_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end
  
  def self.count 
    @@count
  end
  
  def self.genres #unique album genres
    @@genres.uniq!
  end
  
  def self.artists #array of all unique artists
    @@artists.uniq!
  end
  
  def self.genre_count
    @@genres.each do |song_genre|
      if @@genre_count.key?(song_genre)
       @@genre_count[song_genre] += 1
     else 
       @@genre_count[song_genre] = 1
      end
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |number_artist|
      if @@artists_count.key?(number_artist)
       @@artists_count[number_artist] += 1
     else 
       @@artists_count[number_artist] = 1
      end
    end
    @@artists_count
  end
  
  
  
  
end