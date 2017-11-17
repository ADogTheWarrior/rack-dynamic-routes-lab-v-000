class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

puts "req.path = #{req.path}"
puts req.path
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      resp.write "Item price"
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end


if req.path.match(/items/)

  song_title = req.path.split("/items/").last #turn /songs/Sorry into Sorry
  song = @@songs.find{|s| s.title == song_title}

  resp.write song.artist
end