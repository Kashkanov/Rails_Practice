class SubscribersController < ApplicationController
  allow_unauthenticated_access
  before_action :set_product

  def create
    @product.subscribers.where(subscriber_params)
    redirect_to @product, notice: "Subscribed successfully!"
  end

  private
    def set_product
      @product = Product.find(params[:product_id])
    end

    def subscriber_params
      params.require(:subscriber).permit(subscriber: [ :email ])
    end
end
