module CandiesHelper
  def candy_params
      params.require(:candy).permit(:is_shelved, :shelf_id) #marks parameter as required and only changes :shelf_id, :is_shelved
  end
end
