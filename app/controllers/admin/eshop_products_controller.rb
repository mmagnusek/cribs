class Admin::EshopProductsController < Admin::AdminController

  respond_to :html

  def index
    @products = EshopProduct.all
  end

  def new
    @product = EshopProduct.new
  end

  def edit
    @product = EshopProduct.find(params[:id])
  end

  def create
    @product = EshopProduct.new(product_params)
    if @product.save
      flash[:notice] = t('flash.product.created')
      respond_with nil, location: admin_eshop_products_path
    else
      respond_with @product
    end
  end

  def update
    @product = EshopProduct.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:notice] = t('flash.product.updated')
      respond_with nil, location: admin_eshop_products_path
    else
      respond_with @product
    end
  end

  def destroy
    @product = EshopProduct.find(params[:id])
    flash[:notice] = t('flash.product.destroyed') if @product.destroy
    respond_with nil, location: admin_eshop_products_path
  end

  private

  def product_params
    params.required(:eshop_product).permit(:product_id, :color_id, :size_id,
      :stock, :price, :image)
  end

end
