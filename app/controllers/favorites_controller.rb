class FavoritesController < ApplicationController

  def put_in_favorite
    user_drugs = current_user.drugs
    drug = Drug.find(params[:drug_id])
    if user_drugs.include? drug
      favorite = current_user.favorites.select { |favorite| favorite.drug == drug }.first
      favorite.destroy
    else
      favorite = Favorite.new
      favorite.drug = drug
      favorite.user = current_user
      favorite.favored_at = DateTime.now
      favorite.save
    end
    redirect_to drugs_path
  end

  private

  def favorite_params
    params.require(:favorite).permit(:drug_id)
  end
end
