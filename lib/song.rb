class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(song_name, song_artist, song_genre)
        @name = song_name
        @artist = song_artist
        @genre = song_genre

        @@count += 1
        @@genres << @genre
        @@artists << @artist
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

    # def self.genre_count
    #     new_hash = {}
    #     @@genres.each do |genre|
    #         if new_hash[genre] == nil 
    #             new_hash[genre] = 1
    #         else
    #             new_hash[genre] += 1
    #         end
    #     end
    #     new_hash
    # end
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
          if genre_count[genre]
            genre_count[genre] += 1 
          else
            genre_count[genre] = 1
          end
        end
        genre_count
      end

    # def self.artist_count
    #     other_hash = {}
    #     @@artists.each do |artist|
    #         if other_hash[artist] == nil
    #             other_hash[artist] = 1
    #         else
    #             new_hash[artist] += 1
    #         end
    #     end
    #     other_hash
    # end
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist]
            artist_count[artist] += 1 
          else
            artist_count[artist] = 1
          end
        end
        artist_count
      end
end

lady = Song.new("Amaranth", "Nightwish", "metal")
puts lady.artist
puts lady.genre
puts lady.name
# puts lady.genre_count

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# puts ninety_nine_problems.artist
# puts ninety_nine_problems.genre
# puts ninety_nine_problems.name
# puts ninety_nine_problems.artist_count