class MenteesController < ApplicationController
  def new
    @mentee = Mentee.new
  end

  def create
    @mentee = Mentee.new(mentee_params)

    if @mentee.save
      flash[:notice] = "Mentorada criada com sucesso!"
      redirect_to mentee_path(@mentee)
    else
      flash[:alert] = "Erro ao criar mentorada. Verifique os dados."
      render :new
    end
  end

  private

    def mentee_params
      params.expect(mentee: [ :name, :current_title, :current_company, :email, :linkedin_url, :bio ])
    end
end
