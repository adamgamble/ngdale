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
end
