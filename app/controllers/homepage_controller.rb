class HomepageController < ApplicationController

  layout 'eshop'

  def index
    @products = Product.find(:all, order: 'id DESC', limit: 7)
  end

  def welcome
    render layout: 'welcome'
  end

end
