class MentorshipsController < ApplicationController
  def index
    @mentorships = Mentorship.where(mentee_id: params[:mentee_id])
    render json: @mentorships
  end

  def search
    @results = Mentor.where("mentorship_topics LIKE ?", "%#{params[:query]}%")
    @mentee = Mentee.find(params[:mentee_id])
  end

  def create
    @mentorship = Mentorship.new(mentee_id: params[:mentee_id], mentor_id: params[:mentor_id])

    if @mentorship.save
      redirect_to mentee_mentorships_path(params[:mentee_id]), notice: "Mentorship created successfully."
    else
      render :search, status: :unprocessable_entity
    end
  end
end
