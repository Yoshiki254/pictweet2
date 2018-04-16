class TweetsController < ApplicationController

	before_action :authenticate_user!, except: :index

	def index
		@tweets = Tweet.page(params[:page]).per(5).order("created_at DESC")
	end

	def new
	end

	def create
		@tweet = Tweet.create(image: tweet_params[:image], text: tweet_params[:text]) #user_id: current_user.id)
	end

		private
		def tweet_params
			params.permit(:image, :text)
		end


end
