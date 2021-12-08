# require 'rubygems'
# require 'httparty'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Beat.create([
#     {artist: 'Mobb Deep', song: 'Shook Ones Part II', producer: 'Havoc', media: 'https://youtu.be/v9MILl7AMLo'},
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
# data = HTTParty.get('https://musicbrainz.org/ws/2/artist?query=kanye-west&fmt=json&limit=1')
# data = HTTParty.get('http://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=aliases&fmt=json')
# data = HTTParty.get('https://musicbrainz.org/ws/2/artist?query=kanye-west&fmt=json&limit=1?token=Swv62vvxcUNH0vOdLDTTJzIXokR4HQvwIdkFI3xJ')
# http://musicbrainz.org/ws/2/artist/5b11f4ce-a62d-471e-81fc-a69a8278c7da?inc=aliases

# data = HTTParty.get('https://musicbrainz.org/ws/2/artist?query=kanye-west&fmt=json&limit=1', {
#     headers: {"User-Agent" => "Httparty"},
#     debug_output: STDOUT, # To show that User-Agent is Httparty
#   })

# MusicBrainz.configure do |c|
#   # Application identity (required)
#   c.app_name = "My Music App"
#   c.app_version = "1.0"
#   c.contact = "support@mymusicapp.com"

#   # Cache config (optional)
#   c.cache_path = "/tmp/musicbrainz-cache"
#   c.perform_caching = true

#   # Querying config (optional)
#   c.query_interval = 1.2 # seconds
#   c.tries_limit = 2
# end

# require 'musicbrainz'

# Search for artists
# @suggestions = MusicBrainz::Artist.search("Kanye West")
# @suggestions = MusicBrainz::Artist.find_by_name("Madlib")
# MusicBrainz::Artist.find_by_name(name)

# Find artist by name or mbid
# @foo_fighters = MusicBrainz::Artist.find_by_name("Foo Fighters")
# @kasabian = MusicBrainz::Artist.find("69b39eab-6577-46a4-a9f5-817839092033")

# # Use them like ActiveRecord models
# @empire_tracks = @kasabian.release_groups[8].releases.first.tracks


# binding.pry