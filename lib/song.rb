class Song
  attr_accessor :name, :artist, :genre

  @@count=0
  @@artists=[]
  @@genres=[]

  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count +=1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    # @@artists << artist unless @@artists.include?(artist)
    @@artists.uniq
  end

  def self.genres
    # @@genres << genres unless @@genres.include?(genres)
    @@genres.uniq
  end

  # def self.genre_count(genre_count, number_of_songs)
    # genre_count[number_of_songs]=[] unless genre_count.include?(number_of_songs)
    # genre_count[number_of_songs] << genres
    def self.genre_count
      genres_hash={}
      @@genres.each do |gen|
        if genres_hash.key?(gen)
          genres_hash[gen] += 1
        else
          genres_hash[gen] =1
        end
      end
     genres_hash
    end

    def self.artist_count
      artists_hash={}
      @@artists.each do |art|
        if artists_hash.key?(art)
        artists_hash[art] += 1
      else
        artists_hash[art] =1
      end
    end
    artists_hash
   end

end
