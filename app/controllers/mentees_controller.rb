class MenteesController < ApplicationController
  def index
    @mentees = Mentee.all
  end

  def new
    @mentee = Mentee.new
  end

  # Post
  def create
    @mentee = Mentee.new(mentee_params)

    if @mentee.save
      redirect_to mentees_path, notice: "Mentee was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

   def mentee_params
      params.expect(mentee: [ :name, :cargo_atual, :empresa_atual, :email, :linkedin_url, :bio ])
   end

  # Editr
  def edit
    @mentee = Mentee.find(params[:id])
  end

  # UPdate
  def update
    @mentee = Mentee.find(params[:id])

    if @mentee.update(mentee_params)
      redirect_to mentees_path, notice: "Mentee was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
end
