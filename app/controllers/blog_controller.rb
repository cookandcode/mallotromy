class BlogController < ApplicationController
  def index
	@title_page = "Application Mallotromy Jeu Alcool et Gages - Le Blog" 
	@meta_description = "Le Blog de Mallotromy"
	@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy"

	@articles = Article.all

	respond_to do |wants|
		wants.json { render :json => @articles  }
		wants.html { render :index  }
	end
  end
end
