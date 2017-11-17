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
