require('sinatra')
require('sinatra/reloader')

#http://boss.local:4567/movies?ids[]=17&ids[]=18&ids[]=19

#http://boss.local:4567/movies/17?tomato=true&poster=true#review
get("/movies/:id") do
	ids = params[:id].split(', ')
	tomato = params[:tomato]
	poster = params[:poster]
end