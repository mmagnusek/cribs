class Admin::CategoriesController < Admin::AdminController

  respond_to :html

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = t('flash.category.created')
      respond_with nil, location: admin_categories_path
    else
      respond_with @category
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      flash[:notice] = t('flash.category.updated')
      respond_with nil, location: admin_categories_path
    else
      respond_with @category
    end
  end

  def destroy
    @category = Category.find(params[:id])
    flash[:notice] = t('flash.category.destroyed') if @category.destroy
    respond_with nil, location: admin_categories_path
  end

  private

  def category_params
    params.required(:category).permit(:name)
  end

end
