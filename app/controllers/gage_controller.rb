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
		if !params[:newsletter].nil? && !params[:newsletter][:mail].nil?
			@status = 'OK'
			@message_error = ''
			if !params[:newsletter][:mail].match(/^[\w.-]+@[\w]{2,}\.[a-z]{2,4}$/).nil?
				#@verif_mail = Newsletter.new
				@verif_mail = Newsletter.find_or_create_by_mail(:mail => params[:newsletter][:mail])
			else
				@message_error = 'Ce n\'est pas une adresse mail'
				@status = 'bad format'
			end
		end
		respond_to do |wants|
			wants.json { render :json => {
					:status => @status,
					:message_error => @message_error,
					:newsletter => @verif_mail
				}
			}
			wants.html { render :layout => "landing" }
		end
	end
end
