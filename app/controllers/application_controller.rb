class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

#render a form to create a new recipe: 
 get '/recipes/new' do
    erb :new
 end
	 
	post '/articles' do
	  @recipe = Recipe.create(:name => params[:name], :ingredients => params[:ingredients] :cook_time => params[:cook_time])
	  redirect to "/articles/#{@article.id}"
	end


end
