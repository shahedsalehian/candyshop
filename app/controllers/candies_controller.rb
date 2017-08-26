class CandiesController < ApplicationController
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
	end

	def update
	end
end
