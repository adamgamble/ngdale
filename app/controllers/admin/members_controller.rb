class Admin::MembersController < Admin::BaseController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(params[:member])
      flash[:notice] = "Member updated"
      redirect_to admin_member_path(@member)
    else
      flash[:error] = "There were errors updating this member"
      render :action => :edit
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    flash[:notice] = "Destroyed Member"
    redirect_to :action => :index
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      flash[:notice] = "Member Created"
      redirect_to admin_member_path(@member)
    else
      flash[:error] = "There was an error creating the user"
      render :action => :new
    end
  end
end
