class GalleryController < ApplicationController
	def index
		@title_page = "La galerie Mallotromy Lille France"
		@meta_description = "La galerie Mallotromy est pleine de photos de coktails, jeux d'alcool "
		@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy, gallery, galerie"

		@rep = Dir.pwd()
		@images = Dir["public/gallery/*.jpg"] #Dir.glob("*.jpg")
		respond_to do |wants|
			#wants.json { render :json => @gages  }
			wants.html { render :index  }
		end
	end
end
