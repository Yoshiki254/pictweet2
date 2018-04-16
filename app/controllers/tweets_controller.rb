class TweetsController < ApplicationController

	def index
		@tweets = Tweet.include(:user).order('DESC')
	end

end
