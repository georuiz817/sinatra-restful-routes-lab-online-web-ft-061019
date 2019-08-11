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
	  @article = Article.create(:title => params[:title], :content => params[:content])
	  redirect to "/articles/#{@article.id}"
	end


end
