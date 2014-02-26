class Admin::ProductsController < Admin::AdminController

  respond_to :html

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = t('flash.product.created')
      respond_with nil, location: admin_products_path
    else
      respond_with @product
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:notice] = t('flash.product.updated')
      respond_with nil, location: admin_products_path
    else
      respond_with @product
    end
  end

  def destroy
    @product = Product.find(params[:id])
    flash[:notice] = t('flash.product.destroyed') if @product.destroy
    respond_with nil, location: admin_products_path
  end

  private

  def product_params
    params.required(:product).permit(:name, :description,
      :specification, :category_id, :image, :material, :table_id)
  end

end
