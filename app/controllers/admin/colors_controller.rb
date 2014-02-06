class Admin::ColorsController < Admin::AdminController

  respond_to :html

  def index
    @colors = Color.all
  end

  def new
    @color = Color.new
  end

  def edit
    @color = Color.find(params[:id])
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      flash[:notice] = t('flash.color.created')
      respond_with nil, location: admin_colors_path
    else
      respond_with @color
    end
  end

  def update
    @color = Color.find(params[:id])
    if @color.update_attributes(color_params)
      flash[:notice] = t('flash.color.updated')
      respond_with nil, location: admin_colors_path
    else
      respond_with @color
    end
  end

  def destroy
    @color = Color.find(params[:id])
    flash[:notice] = t('flash.product.destroyed') if @color.destroy
    respond_with nil, location: admin_colors_path
  end

  private

  def color_params
    params.required(:color).permit(:name)
  end

end
