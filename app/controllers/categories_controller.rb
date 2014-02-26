class CategoriesController < ApplicationController

  layout 'eshop'

  respond_to :html

  def show
    @category = Category.find(params[:id])
  end

end
