class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.genres
    @@genres.uniq
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genre_count
    counter = {}
    @@genres.each {|elem|
      counter[elem] ||= 0
      counter[elem] += 1
    }
    counter
  end
  def self.artist_count
    counter = {}
    @@artists.each {|elem|
      counter[elem] ||= 0
      counter[elem] += 1
    }
    counter
  end
end
