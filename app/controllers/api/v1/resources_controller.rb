class Api::V1::ResourcesController < ApplicationController

  def create
    resource = Resource.new(resource_params)
    resource.user = current_user
    resource.save
    render json: resource
  end

  def update
    resource = Resource.find(params[:id])
    resource.update(resource_params)
    render json: resource, methods: [ :resource_details, :category_ids]
  end

  def index
    render json: Resource.all, include: [ :details ]
  end

  def show
    resource = Resource.find(params[:id])
    render json: resource, methods: [ :details, :resource_details, :category_ids]
  end

  def destroy
    resource = Resource.find(params[:id])
    resource.destroy
  end

  private

  def resource_params
    params.permit(:longitude, :latitude, :user_id, category_ids: [], resource_details_attributes:[ [
        :id,
        :program_name, :description, :services, :address, :telephone, :website, :hours, :eligibility, :language_spoken, :language_id

      ] ])
  end

end
