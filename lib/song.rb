class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |ele|
      if genre_hash[ele]
        genre_hash[ele] +=1
      else
        genre_hash[ele] = 1
      end
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.each do |ele|
      if artist_hash[ele]
        artist_hash[ele] +=1
      else
        artist_hash[ele] = 1
      end
    end
    artist_hash
  end

end
