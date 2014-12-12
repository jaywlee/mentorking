class MentorsController < ApplicationController
  def index
    @mentors = Mentor.all
  end

  def show
    @mentor = Mentor.find(params[:id])

  end

  def new
    @mentor = Mentor.new
  end

  def create
    @mentor = Mentor.new
    @mentor.email = params[:email]
    @mentor.first_name = params[:first_name]
    @mentor.last_name = params[:last_name]
    @mentor.division = params[:division]

    if @mentor.save
      redirect_to "/mentors", :notice => "Mentor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @mentor = Mentor.find(params[:id])
  end

  def update
    @mentor = Mentor.find(params[:id])

    @mentor.email = params[:email]
    @mentor.first_name = params[:first_name]
    @mentor.last_name = params[:last_name]
    @mentor.division = params[:division]

    if @mentor.save
      redirect_to "/mentors", :notice => "Mentor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @mentor = Mentor.find(params[:id])

    @mentor.destroy

    redirect_to "/mentors", :notice => "Mentor deleted."
  end
end
