module CandiesHelper
  def candy_params
      params.require(:candy).permit(:is_shelved, :shelf_id)
  end
end
