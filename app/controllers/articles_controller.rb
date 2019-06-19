class ArticlesController < ApplicationController
	def index
		@articles = Article.order("created_at DESC")
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		if !logged_in?
			redirect_to root_path
		end

		Article.create(article_params)
		redirect_to root_path
	end

	def show
		@article = Article.find(params[:id])
	end

	def update
		article = Article.find(edit_params[:id]) 
		article.update(title: edit_params[:title], description: edit_params[:description])
		redirect_to root_path
	end

	def destroy
		Article.destroy(params[:id])
		redirect_to root_path
	end

	def article_params
		params.require(:article).permit(:description, :title)
	end

	def edit_params
		params.require(:article).permit(:description, :title, :id)
	end
end