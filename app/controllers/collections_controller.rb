class CollectionsController < ApplicationController
  def user_collections
    user = User.find(params[:user_id])
    collections = Collection.all
    collections = collections.select {|collection| collection.user_id == user.id}
    render json: collections
  end

  def create
    collection = Collection.create(name: params[:name], user_id: params[:user_id])
    render json: collection
  end

  def show
    collection = Collection.find(params[:id])
    render json: collection
  end

end
