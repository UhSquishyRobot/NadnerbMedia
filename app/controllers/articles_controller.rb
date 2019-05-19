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
		Article.create(article_params)
		redirect_to root_path
	end

	def destroy
		Article.destroy(params[:id])
		redirect_to root_path
	end

	def article_params
		params.require(:article).permit(:description, :title)
	end
end