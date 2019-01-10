class Song
     attr_accessor :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]

    def initialize(name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@artists<<artist
        @@genres<<genre

    end

    def artists
        @@artists
    end

    def genres
        @@genres
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
        result={}
        Song.genres.each do |one|
            count=0
            @@genres.each do |genre|
                if genre == one 
                    count+=1
                end
            end
            result[one]=count
        end
        result
    end

    def self.artist_count
        result={}
        Song.artists.each do |one|
            count=0
            @@artists.each do |genre|
                if genre == one 
                    count+=1
                end
            end
            result[one]=count
        end
        result
    end



end