class PublishersController < ApplicationController
  def new
    @page_title = "Add New Publisher"
    @publisher = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      flash[:notice] = "Publisher Created"
      redirect_to publishers_path
    else
      flash[:alert] = @publisher.errors.full_messages.join(',')
      redirect_to new_publisher_path
    end
  end

  def update
  end

  def edit
    @publisher=Publisher.find(params[:id])
  end

  def destroy
    @publisher=Publisher.find(params[:id])
    @publisher.destroy

    flash[:notice] = "Publisher Deleted"
    redirect_to publishers_path
  end

  def index
    @publishers =Publisher.all
  end

  def show
  end

  private
  def publisher_params
 params.require(:publisher).permit(:name)
end 
end
