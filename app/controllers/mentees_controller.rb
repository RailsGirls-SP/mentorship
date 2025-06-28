class MenteesController < ApplicationController
  before_action :set_mentee, only: %i[ show edit update destroy ]

  def index
    @mentees = Mentee.all
  end

  def show
  end

  def new 
    @mentee = Mentee.new
  end

  def edit
  end

  def create
    @mentee = Mentee.new(mentee_params)
    respond_to do |format|
      if @mentee.save
        format.html { redirect_to @mentee, notice: "Mentee was successfully created." }
        format.json { render :show, status: :created, location: @mentee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mentee.update(mentee_params)
        format.html { redirect_to @mentee, notice: "Mentee was successfully updated." }
        format.json { render :show, status: :ok, location: @mentee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mentee.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mentee.destroy!

    respond_to do |format|
      format.html { redirect_to mentees_path, status: :see_other, notice: "Mentee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private 
    def set_mentee
      @mentee = Mentee.find(params.expect(:id))
    end

  def mentee_params
    params.expect(mentee: [ :name, :current_title, :current_company, :email, :linkedin_url, :bio ])
  end
end
