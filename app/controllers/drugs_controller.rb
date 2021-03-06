class DrugsController < ApplicationController
  def index
    @drugs = Drug.all
    @user_drugs = current_user.drugs
  end

  def show
    @drug = Drug.find(params[:id])
    @review = Review.new
  end

  def new
    @drug = Drug.new
  end

  def create
    @drug = Drug.new(drug_params)
    if @drug.save
      redirect_to drugs_path
    else
      render :new
    end
  end

  private

  def drug_params
    params.require(:drug).permit(:name, :description, :posology)
  end
end
