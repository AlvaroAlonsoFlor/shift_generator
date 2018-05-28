def initialize
  shifts = Array.new(7) {Array.new(4)}
  @tiles = ["M", "."]
  @world.map! do |arr|
    arr.map! do |element|
      @tiles[rand(0..1)]
    end
