class Admin::TablesController < Admin::AdminController

  respond_to :html

  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
  end

  def edit
    @table = Table.find(params[:id])
  end

  def create
    @table = Table.new(table_params)
    if @table.save
      flash[:notice] = t('flash.table.created')
      respond_with nil, location: admin_tables_path
    else
      respond_with @table
    end
  end

  def update
    @table = Table.find(params[:id])
    if @table.update_attributes(table_params)
      flash[:notice] = t('flash.table.updated')
      respond_with nil, location: admin_tables_path
    else
      respond_with @table
    end
  end

  def destroy
    @table = Table.find(params[:id])
    flash[:notice] = t('flash.table.destroyed') if @table.destroy
    respond_with nil, location: admin_tables_path
  end

  private

  def table_params
    params.required(:table).permit(:name, :a_uni,:a_xs,:a_s,:a_m,:a_l,:a_xl,:a_xxl,:b_uni,
      :b_xs,:b_s,:b_m,:b_l,:b_xl,:b_xxl,:c_uni,:c_xs,:c_s,:c_m,:c_l,:c_xl,:c_xxl,
      :d_uni,:d_xs,:d_s,:d_m,:d_l,:d_xl,:d_xxl,:e_uni,:e_xs,:e_s,:e_m,:e_l,:e_xl,:e_xxl)
  end

end
