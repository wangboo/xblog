class Admin::CategoriesController < Admin::BaseController

  after_action :remove_cache, only: %w(update create)

  def index

  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    data = params.require(:category).permit(:name, :zorder)
    Category.find(params[:id]).update(data)
    redirect_to admin_categories_path
  end

  def create
    data = params.require(:category).permit(:name, :zorder)
    Category.create!(data)
    redirect_to admin_categories_path
  end

  def remove_cache
    expire_fragment :categories_panels
  end

end
