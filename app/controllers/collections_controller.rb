class CollectionsController < ApplicationController

    def user_collections
      user = User.find(params[:user_id])
      collections = Collection.all
      collections = collections.select {|collection| collection.user_id == user.id}
      render json: collections
    end

    def create
      collection = Collection.create(collection_params(params))
      render json: collection
    end

    private

    def collection_params(params)
      params.require(:collection).permit(:name, :user_id)
    end
end
