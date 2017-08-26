class ShelvesController < ApplicationController
  def show
    @shelf = Shop.find(params[:shop_id]).shelves.find(params[:id])
  end
  def new
    @shelf = Shop.find(params[:shop_id]).shelves.new
  end

  def create
    @shelf = Shop.find(params[:shop_id]).shelves.new
    @shelf.shelf_name = params[:shelf][:shelf_name]
    @shelf.save
    redirect_to shop_path(params[:shop_id])
  end

  def destroy
    @shelf = Shop.find(params[:shop_id]).shelves.find(params[:id])
    @shelf.destroy
    redirect_to shop_path(params[:shop_id])
  end

end
