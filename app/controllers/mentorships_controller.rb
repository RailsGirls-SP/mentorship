class MentorshipsController < ApplicationController
  def create
    @mentorship = Mentorship.new(mentorship_params)
    if @mentorship.save
      redirect_to mentors_path, notice: "Mentora e mentorada conectadas com sucesso."
    else
      redirect_to mentors_path, alert: "Erro ao conectar."
    end
  end

  private

  def mentorship_params
    params.require(:mentorship).permit(:mentor_id, :mentee_id)
  end
end
