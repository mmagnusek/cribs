class EshopProductsController < ApplicationController

  layout 'eshop'

  respond_to :html, :json, :js

  def index
  end

  def show
    @product  = Product.find(params[:id])
    @products = Product.find(:all, order: 'id DESC', limit: 7)
  end

  def stock_count
    @product    = EshopProduct.where(color_id: params[:color_id], size_id: params[:size_id]).first
    render json: @product.try(:stock)
  end

  def category

  end

end
