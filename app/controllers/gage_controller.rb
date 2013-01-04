class GageController < ApplicationController
	def index
		@gages = Gage.all

		respond_to do |wants|
			wants.json { render :json => @gages  }
			wants.html { render :index  }
		end
	end
end
