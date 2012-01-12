class Admin::SermonsController < Admin::BaseController
  def index
    @sermons = Sermon.all
  end

  def show
    @sermon = Sermon.find(params[:id])
  end

  def new
    @sermon = Sermon.new
  end

  def edit
    @sermon = Sermon.find(params[:id])
  end

  def update
    @sermon = Sermon.find(params[:id])
    if @sermon.update_attributes(params[:sermon])
      flash[:notice] = "Sermon updated"
      redirect_to admin_sermon_path(@sermon)
    else
      flash[:error] = "Error updating sermon"
      render :action => :edit
    end
  end

  def create
    @sermon = Sermon.new(params[:sermon])
    if @sermon.save
      flash[:notice] = "Sermon saved"
      redirect_to :action => :index
    else
      flash[:error] = "Error saving sermon"
      render :action => :new
    end
  end

  def destroy
    @sermon = Sermon.find(params[:id])
    @sermon.destroy
    flash[:notice] = "Sermon Destroyed"
    redirect_to :action => :index
  end
end
