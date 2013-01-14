class GalleryController < ApplicationController
	def index
		#Dir.chdir("public") do 
			#@images = Dir.glob("*.jpeg","*.jpg")
		#end 
		@images = Dir.glob("*.jpg")
		respond_to do |wants|
			#wants.json { render :json => @gages  }
			wants.html { render :index  }
		end
	end
end
