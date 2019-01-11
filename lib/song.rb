require "pry"

class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre       
        @@artists << artist
        @@genres << genre
        @@count += 1
    end
    
    def self.count
        @@count
    end

    def self.artists
        container = []
        repeat = ""
        @@artists.each do |element|
            if repeat != element
                container << element
                repeat = element
            end
        end
        container
    end

    def self.genres
        container = []
        repeat = ""
        @@genres.each do |element|
            if repeat != element
                container << element
                repeat = element
            end
        end
        container
    end

    def self.genre_count
        hash = {}
        @@genres.each do |type|
            if hash.has_key?(type)
                hash[type] += 1
            elsif hash.has_key?(type) == false
                hash[type] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |type|
            if hash.has_key?(type)
                hash[type] += 1
            elsif hash.has_key?(type) == false
                hash[type] = 1
            end
        end
        hash
    end
        

end
