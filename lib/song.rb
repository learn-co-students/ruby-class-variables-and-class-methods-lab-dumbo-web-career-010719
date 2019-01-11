require 'pry'
class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @hash = {}
  @hash2 = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    @@genres.each do |genre|
      if @hash.include?(genre)
        @hash[genre] = @@genres.count(genre)
      else @hash[genre] = 1
      end
    end
    @hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if @hash2.include?(artist)
        @hash2[artist] = @@artists.count(artist)
      else @hash2[artist] = 1
      end
    end
    @hash2
  end

end
