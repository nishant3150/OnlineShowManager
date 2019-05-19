# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.execute("DELETE FROM season_users")
ActiveRecord::Base.connection.execute("DELETE FROM movie_users")
ActiveRecord::Base.connection.execute("DELETE FROM episodes")
ActiveRecord::Base.connection.execute("DELETE FROM seasons")
ActiveRecord::Base.connection.execute("DELETE FROM movies")
# ActiveRecord::Base.connection.tables.each do |table|
#   next if table == 'schema_migrations'

#   # MySQL and PostgreSQL
#   # ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

#   # SQLite
#   ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
# end

VideoQuality.create([
    { name: "HD" },
    { name: "SD" }
])
Movie.create([
    { title: "Andhadhun", plot: "Murder mystery", hd_price: 1.85, sd_price: 1.00, created_at: '2019-05-18 07:32:08.788825' },
    { title: "Welcome", plot: "Family comedy", hd_price: 2.85, sd_price: 2.00, created_at: '2019-05-17 07:32:08.788825' },
    { title: "Bahubali", plot: "Fictional", hd_price: 5.85, sd_price: 4.50, created_at: '2019-05-16 07:32:08.788825' },
    { title: "De de Pyaar De", plot: "Family Comedy", hd_price: 3.85, sd_price: 3.00, created_at: '2019-05-15 07:32:08.788825' }
])
Season.create([
    { title: "Game of Thrones", plot: "Way to King's Landing", hd_price: 10.95, sd_price: 7.00 },
    { title: "Flash", plot: "Superhero", hd_price: 8.00, sd_price: 5.50 },
    { title: "Gotham", plot: "Story on evolvement of a city's crime", hd_price: 8.00, sd_price: 5.00 }
])
Episode.create([
    { title: "Lord Snow", episode_number: 3, season_id: Season.first.id },
    { title: "King's Road", episode_number: 2, season_id: Season.first.id },
    { title: "Winter is Coming", episode_number: 1, season_id: Season.first.id },
    { title: "Gone Rogue", episode_number: 3, season_id: Season.second.id },
    { title: "Godspeed", episode_number: 2, season_id: Season.second.id },
    { title: "Seeing Red", episode_number: 1, season_id: Season.second.id },
    { title: "Nothing's shocking", episode_number: 3, season_id: Season.third.id },
    { title: "Ruin", episode_number: 2, season_id: Season.third.id },
    { title: "Year Zero", episode_number: 1, season_id: Season.third.id },
])