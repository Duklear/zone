class HomeController < ApplicationController
	def index
		@comments =Comment.all.reverse
	end
	def write
		comment=Comment.new
		comment.name=params[:name]
		comment.content=params[:message]
		comment.save
		redirect_to'/#contact'
	end
end
