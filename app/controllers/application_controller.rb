class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

#render a form to create a new recipe: 
 get '/recipes/new' do
2.	  erb :new
3.	end
4.	 
5.	post '/articles' do
6.	  @article = Article.create(:title => params[:title], :content => params[:content])
7.	  redirect to "/articles/#{@article.id}"
8.	end


end
