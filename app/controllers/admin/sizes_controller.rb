class Admin::SizesController < Admin::AdminController

  respond_to :html

  def index
    @sizes = Size.all
  end

  def new
    @size = Size.new
  end

  def edit
    @size = Size.find(params[:id])
  end

  def create
    @size = Size.new(size_params)
    if @size.save
      flash[:notice] = t('flash.size.created')
      respond_with nil, location: admin_sizes_path
    else
      respond_with @size
    end
  end

  def update
    @size = Size.find(params[:id])
    if @size.update_attributes(size_params)
      flash[:notice] = t('flash.size.updated')
      respond_with nil, location: admin_sizes_path
    else
      respond_with @size
    end
  end

  def destroy
    @size = Size.find(params[:id])
    flash[:notice] = t('flash.size.destroyed') if @size.destroy
    respond_with nil, location: admin_sizes_path
  end

  private

  def size_params
    params.required(:size).permit(:name)
  end

end
