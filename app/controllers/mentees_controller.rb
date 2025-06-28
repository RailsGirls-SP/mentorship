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
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @mentees = Mentee.all
  end

  def show
    @mentee = Mentee.find(params.expect(:id))
  end

  def edit
    @mentee = Mentee.find(params.expect(:id))
  end

  def update
    @mentee = Mentee.find(params.expect(:id))
    if @mentee.update(mentee_params)
      flash[:notice] = "Mentorada atualizada com sucesso!"
      redirect_to mentee_path(@mentee)
    else
      flash[:alert] = "Erro ao atualizar mentorada. Verifique os dados."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @mentee = Mentee.find(params.expect(:id))

    if @mentee.destroy
      flash[:notice] = "Mentorada removida com sucesso!"
      redirect_to mentees_path
    else
      flash[:alert] = "Erro ao deletar mentorada"
      redirect_to mentee_path(@mentee), status: :unprocessable_entity
    end
  end

  private

  def mentee_params
    params.expect(mentee: [ :name, :current_title, :current_company, :email, :linkedin_url, :bio ])
  end
end
