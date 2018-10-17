artist1 = Artist.create!(
  name: "Charlie Puth",
  info: "So handsome like me"
)

artist2 = Artist.create!(
  name: "Adam",
  info: "A great singer born in 19xx"
)

category = Category.create!(
  name: "US-UK"
)

album1 = Album.create!(
  title: "Hits US-UK",
  artist: artist1,
  category: category,
  description: "Nam phat hanh 2018"
)

album2 = Album.create!(
  title: "Top US-UK",
  artist: artist2,
  category: category,
  description: "Album by Marron 5"
)

song1 = Song.create!(
  name: "Attention",
  album: album1,
  lyric: nil
)

song2 = Song.create!(
  name: "Girls like you",
  album: album2,
  lyric: nil
)
