class CommentsController < ApplicationController
	
	def create
		binding.pry
		Comment.create(text: params[:text], )
  end
end
