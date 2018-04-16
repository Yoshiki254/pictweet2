class TweetsController < ApplicationController

	def index
		@tweets = Tweet.include(:user).order(created_at 'DESC')
	end

	def new
		
	end

	def create

	end

end
