class RegisteredApplicationsController < ApplicationController
  def index
    @applications = RegisteredApplication.all
  end

  def show
    @application = RegisteredApplication.find(params[:id])
    @events = @application.events.group_by(&:name)

  end

  def new
    @application = RegisteredApplication.new

  end

  def create
    @application = RegisteredApplication.new
    @application.name = params[:registered_application][:name]
    @application.url =params[:registered_application][:url]
    @application.user = current_user

    if @application.save!
      redirect_to @application, notice: "Application was installed successfully."

    else
      flash.now[:alert] = "Error registering application, try again."
      render :new
    end

  end

  def destroy
    @application = RegisteredApplication.find(params[:id])

    if @application.destroy
      flash[:notice] = "\"#{@application.name}\" was deleted successfully."
      redirect_to action: :index
    else
      flash.now[:alert] = "There was an error deleting the app"
      render :show
    end
  end


end
