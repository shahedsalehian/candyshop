class CandiesController < ApplicationController
include CandiesHelper

	def new
		@candy = Shop.find(params[:shop_id]).candies.new
	end

	def create
		@candy = Shop.find(params[:shop_id]).candies.new
    	@candy.candy_name = params[:candy][:candy_name]
    	@candy.save
    	redirect_to shop_path(params[:shop_id])
	end

	def edit
		@candy = Shop.find(params[:shop_id]).candies.find(params[:id])
		@shelves = Shop.find(params[:shop_id]).shelves.all
	end

	def update
		@candy = Shop.find(params[:shop_id]).candies.find(params[:id])
		@candy.update(candy_params)
		redirect_to shop_path(params[:shop_id])
	end
end
