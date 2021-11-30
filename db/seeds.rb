# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Beat.create([
#     {artist: 'Mobb Deep', song: 'Shook Ones Part II', producer: 'Havoc', media: 'https://youtu.be/0NUX4tW5pps'},
#     {artist: 'Wu-Tang Clan', song: 'C.R.E.A.M.', producer: 'RZA', media: 'https://youtu.be/HEhS6wtURB0'},
#     {artist: 'A Tribe Called Quest featuring Leaders of the New School', song: 'Scenario', producer: 'A Tribe Called Quest', media: 'https://youtu.be/g2mXc8GNLHM'},
#     {artist: '50 Cent', song: 'In da Club', producer: 'Dr. Dre', media: 'https://youtu.be/s7q4_dnzw68'},
#     {artist: 'Black Sheep', song: 'The Choice Is Yours', producer: 'Black Sheep', media: 'https://youtu.be/lI7P7stRQQk'},
#     {artist: 'Clipse', song: "Grindin'", producer: 'The Neptunes', media: 'https://youtu.be/7EMZ89rT_sw'},
#     {artist: 'Eric B. & Rakim', song: 'Paid in Full', producer: 'Eric B. & Rakim', media: 'https://youtu.be/R0NSmz1q_Nk'},
#     {artist: 'DMX', song: "Ruff Ryders' Anthem", producer: 'Swizz Beatz', media: 'https://youtu.be/Vh3-pfRlmKY'},
#     {artist: 'Black Rob', song: 'Whoa!', producer: 'Buckwild', media: 'https://youtu.be/lhlxxVzF508'},
#     {artist: 'The D.O.C', song: "It's Funky Enough", producer: 'Dr. Dre', media: 'https://youtu.be/qphTD297XOk'},
#     {artist: 'MC Shan', song: 'The Bridge', producer: 'Marley Marl', media: 'https://youtu.be/O0J-xq1glks'},
#     {artist: 'Fabolous', song: 'Breathe', producer: 'Just Blaze', media: 'https://youtu.be/QDNswWBG0PM'}
# ])
data=HTTParty.get('https://musicbrainz.org/ws/2/artist?query=kanye-west&fmt=json&limit=1')
binding.pry