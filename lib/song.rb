class Song
    require 'pry'
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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
        @@genres.inject(Hash.new(0)) { |count, song| count[song] += 1 ;count}
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) {|count, artist_name| count[artist_name] += 1; count}
    end
end