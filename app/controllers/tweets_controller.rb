class TweetsController < ApplicationController

	def index
		@tweets = Tweets.order('DESC')
	end

end
