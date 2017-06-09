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

  def Song.count
    return @@count
  end

  def Song.genres
    @@genres.uniq
  end

  def Song.artists
    @@artists.uniq
  end

  def Song.genre_count
    @@genres.each_with_object({}) do |genre, genre_hash|
      genre_hash[genre] = @@genres.count(genre)
    end
  end

  def Song.artist_count
    @@artists.each_with_object({}) do |artist, artist_hash|
      artist_hash[artist] = @@artists.count(artist)
    end
  end

end
