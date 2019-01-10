class Song
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

      @@artists << artist
      @@genres << genre
      @@songs << name
    @@count +=1
  end
    @@artists = []
    @@genres = []
    @@songs = []
    @@count = 0

  attr_reader :name, :artist, :genre

  def self.count
    @@count
  end
  def self.artists
    arr = []
    @@artists.each do |x|
    if !arr.include?(x)
      arr << x
    end
  end
    return arr
  end
  def self.genres
    arr = []
    @@genres.each do |x|
    if !arr.include?(x)
      arr << x
    end
  end
    return arr
  end
  def self.artist_count
    arr = {}
    @@artists.each do |x|
    if !arr.include?(x)
      arr[x] = 1
  else
    arr[x]+=1
  end
end
    return arr
  end
  def self.genre_count
    arr = {}
    @@genres.each do |x|
      if !arr.include?(x)
        arr[x] = 1
      else
        arr[x]+=1
      end
    end
    return arr
  end
end
