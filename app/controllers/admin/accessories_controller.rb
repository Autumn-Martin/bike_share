class Admin::AccessoriesController < Admin::BaseController
  before_action :set_accessory, only: [:destroy, :edit, :update]

  def edit
    if current_user && current_user.admin?
      @admin = current_user
    else
      render file:'public/404'
    end
  end

  def update
    @accessory = Accessory.find_by(slug: params[:slug])
    @accessory.update(accessory_params)
    flash[:notice] = "Successfully updated!"
    redirect_to admin_bike_shop_path
  end

  def update_accessory
    @accessory = Accessory.find_by(slug: params[:slug])
    @admin = current_user
    if @accessory.retired
      @accessory.update_attributes!(retired: false)
    else
      @accessory.update_attributes!(retired: true)
    end
    redirect_to admin_bike_shop_path
  end

  def new
    @accessory = Accessory.new()
  end

  def create
    accessory = Accessory.new(accessory_params)
    accessory.save
    flash[:notice] = "Successfully created #{accessory.title}!"
    redirect_to accessory_path(accessory)
  end

  def index
    if current_user && current_user.admin?
      @accessories = Accessory.all
    else
      render file:'public/404'
    end
  end

  private
    def accessory_params
      params.require(:accessory).permit(:image, :title, :description, :price, :retired)
    end

    def set_accessory
      @accessory = Accessory.find_by(slug: params[:slug])
    end

end
