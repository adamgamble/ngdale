class Admin::CarouselImagesController < Admin::BaseController
  def index
    @carousel_images = CarouselImage.all
  end

  def show
    @carousel_image = CarouselImage.find(params[:id])
  end

  def new
    @carousel_image = CarouselImage.new
  end

  def edit
    @carousel_image = CarouselImage.find(params[:id])
  end

  def update
    @carousel_image = CarouselImage.find(params[:id])
    if @carousel_image.update_attributes(params[:carousel_image])
      flash[:notice] = "CarouselImage updated"
      redirect_to admin_carousel_image_path(@carousel_image)
    else
      flash[:error] = "Error updating carousel_image"
      render :action => :edit
    end
  end

  def create
    @carousel_image = CarouselImage.new(params[:carousel_image])
    if @carousel_image.save
      flash[:notice] = "CarouselImage saved"
      redirect_to :action => :index
    else
      flash[:error] = "Error saving carousel_image"
      render :action => :new
    end
  end

  def destroy
    @carousel_image = CarouselImage.find(params[:id])
    @carousel_image.destroy
    flash[:notice] = "CarouselImage Destroyed"
    redirect_to :action => :index
  end
end
