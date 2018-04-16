class TweetsController < ApplicationController

	def index
		@tweets = Tweet.all
		#@tweets = Tweet.include(:user).order(created_at 'DESC')
	end

	def new
	end

	def create
		@tweet = Tweet.create(image: tweet_params[:image], text: tweet_params[:image], user_id: current_user.id)
	end

		private
		def tweet_params
			params.permit(:image, :text)
		end


end
