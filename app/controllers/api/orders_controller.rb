class Api::OrdersController < ApplicationController
  def create
    order = current_user.orders.create
    product = Product.find(params[:product_id])
    order.items.create(product: product)

    render json: { message: 'Your order was created...' }, status: 201
  end
end
