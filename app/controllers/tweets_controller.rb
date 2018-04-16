class TweetsController < ApplicationController

	before_action :authenticate_user!, except: :index

	def index
		@tweets = Tweet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
	end

	def new
	end

	def create
		@tweet = Tweet.create(image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
	end

	def destroy
		tweet = Tweet.find(params[:id])
		tweet.destroy if current_user.id == tweet.user_id
	end

	def edit
		@tweet = Tweet.find(params[:id])
	end

	def update
		tweet = Tweet.find(params[:id])
		tweet.update(tweet_params) if tweet.user_id == current_user.id
	end

	def show
		@tweet = Tweet.find(params[:id])
	end



		private
		def tweet_params
			params.permit(:image, :text)
		end


end
