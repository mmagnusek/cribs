class EshopProductsController < ApplicationController

  layout 'eshop'

  def index
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.find(:all, order: 'id DESC', limit: 7)
  end

end
