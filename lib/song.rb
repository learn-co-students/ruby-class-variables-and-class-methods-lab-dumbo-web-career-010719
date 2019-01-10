class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    count = Hash.new(0)
    @@genres.each do |genre|
      count[genre] += 1
    end
    return count
  end
  
  def self.artist_count
    count = Hash.new(0)
    @@artists.each do |artist|
      count[artist] += 1
    end
    return count
  end
  
end