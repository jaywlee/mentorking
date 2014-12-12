class CentersController < ApplicationController
  def index
    @centers = Center.all
  end

  def show
    @center = Center.find(params[:id])
  end

  def new
    @center = Center.new
  end

  def create
    @center = Center.new
    @center.mentor_id = params[:mentor_id]
    @center.division_id = params[:division_id]
    @center.service_id = params[:service_id]
    @center.ratings = params[:ratings]

    if @center.save
      redirect_to "/centers", :notice => "Center created successfully."
    else
      render 'new'
    end
  end

  def edit
    @center = Center.find(params[:id])
  end

  def update
    @center = Center.find(params[:id])

    @center.mentor_id = params[:mentor_id]
    @center.division_id = params[:division_id]
    @center.service_id = params[:service_id]
    @center.ratings = params[:ratings]

    if @center.save
      redirect_to "/centers", :notice => "Center updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @center = Center.find(params[:id])

    @center.destroy

    redirect_to "/centers", :notice => "Center deleted."
  end
end
