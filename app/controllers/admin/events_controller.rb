class Admin::EventsController < Admin::BaseController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = "Updated event"
      redirect_to admin_event_path(@event)
    else
      flash[:error] = "Couldn't update event"
      render :action => :edit
    end
  end

  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:notice] = "Event Created"
      redirect_to :action => :index
    else
      flash[:error] = "Event couldn't be created"
      render :action => :new
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event destroyed"
    redirect_to :action => :index
  end
end
