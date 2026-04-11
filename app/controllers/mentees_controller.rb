class MenteesController < ApplicationController
  def index
    @mentees = Mentee.all
  end

  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(mentee_params)
    if @mentee.save
      redirect_to mentees_path, notice: "Mentorada criada com sucesso."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def mentee_params
    params.require(:mentee).permit(:name, :current_title, :current_company, :email, :linkedin_url, :bio, :mentorship_topics)
  end
end
