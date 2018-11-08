class Api::V1::CategoriesController < ApplicationController
 skip_before_action :check_authentication, only: [ :index, :show ]

  def index
    render json: Category.all, include: { details: {} }
  end

  def show
    render json: Category.find(params[:id]), include: { details: {}, resources: { include: { details: {} } } }
  end
end
