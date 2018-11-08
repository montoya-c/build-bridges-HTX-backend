class Api::V1::CategoryDetailsController < ApplicationController

  def create
    category_details= CategoryDetails(category_detail_params)
    render json: category_details
  end

  def update
    render json: CategoryDetails.find(params[:id]).update(category_detail_params)
  end

  private

  def category_detail_params
    params.require(:category_details).permit(:name, :language_id, :category_id)
  end
end
