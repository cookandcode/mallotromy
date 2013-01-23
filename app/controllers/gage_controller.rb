#!/bin/env ruby
# encoding: utf-8

class GageController < ApplicationController
	def index
		@title_page = "Application Mallotromy Jeu Alcool et Gages - Lille France" 
		@meta_description = "Mallotromy est une application pour toutes vos soirées entre amis. Gages, jeux, alcool."
		@meta_keyword = "Gages, Alcool, Jeu, Application, Lille, France, Mallotromy"

		@gages = Gage.all

		respond_to do |wants|
			wants.json { render :json => @gages  }
			wants.html { render :index  }
		end
	end

	def landing
	end
end
