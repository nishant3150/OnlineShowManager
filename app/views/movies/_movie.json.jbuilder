json.extract! movie, :id, :title, :plot, :hd_price, :sd_price, :created_at, :updated_at
json.url movie_url(movie, format: :json)
