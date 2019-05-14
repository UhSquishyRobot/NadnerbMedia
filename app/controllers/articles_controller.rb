class ArticlesController < ApplicationController
	def index
	end

	def new
		@article = Article.new
	end

	def create
		Article.create(article_params)
	end

	def article_params
		params.require(:article).permit(:description, :title)
	end
end