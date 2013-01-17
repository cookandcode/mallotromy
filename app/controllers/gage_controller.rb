class GageController < ApplicationController
	def index
		@title_page = "Mallotromy Application Jeu Alcool et Gages - Lille France" 
		@meta_description = "Mallotromy est une application pour toutes vos soirees entre amis. Gages, jeux, alcool."
		@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy"

		@gages = Gage.all

		respond_to do |wants|
			wants.json { render :json => @gages  }
			wants.html { render :index  }
		end
	end
end
