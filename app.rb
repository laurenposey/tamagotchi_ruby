# require("sinatra")
# require("sinatra/reloader")
# require("./lib/tamagotchi")
# also_reload("lib/**/*.rb")
#
# get("/") do
#   @tamagotchi =
#   erb(:index)
# end
#
# post("/tamagotchi") do
#   description = params.fetch("description")
#   places = Place.new(description)
#   places.save()
#   erb(:success)
# end
