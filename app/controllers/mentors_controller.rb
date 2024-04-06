class MentorsController < ApplicationController

  def new
    @mentor = Mentor.new
  end

  def index
    @mentors = Mentor.all
  end

  def edit
    @mentor = Mentor.find(params[:id])
  end

  def show
    @mentor = Mentor.find(params[:id])
  end

  def create
    @mentor = Mentor.new(mentors_params)

    if @mentor.save
      redirect_to @mentor
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @mentor = Mentor.find(params[:id])

    if @mentor.update(mentors_params)
      redirect_to @mentor
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @mentor = Mentor.find(params[:id])

    redirect_to mentors_path if @mentor.destroy
  end

  private

  def mentors_params
    params.require(:mentor).permit(:name, :email, :url, :bio)
  end
end