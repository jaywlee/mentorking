class DivisionsController < ApplicationController
  def index
    @divisions = Division.all
  end

  def show
    @division = Division.find(params[:id])
    @mentors = @division.mentors
  end

  def new
    @division = Division.new
  end

  def create
    @division = Division.new
    @division.division = params[:division]

    if @division.save
      redirect_to "/divisions", :notice => "Division created successfully."
    else
      render 'new'
    end
  end

  def edit
    @division = Division.find(params[:id])
  end

  def update
    @division = Division.find(params[:id])

    @division.division = params[:division]

    if @division.save
      redirect_to "/divisions", :notice => "Division updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @division = Division.find(params[:id])

    @division.destroy

    redirect_to "/divisions", :notice => "Division deleted."
  end
end
