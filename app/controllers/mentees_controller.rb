class MenteesController < ApplicationController
  before_action :set_mentee, only: %i[ show edit update destroy ]

  # GET /mentees or /mentees.json
  def index
    @mentees = Mentee.all
  end

  # GET /mentees/1 or /mentees/1.json
  def show
  end

  # GET /mentees/new
  def new
    @mentee = Mentee.new
  end

  # GET /mentees/1/edit
  def edit
  end

  # POST /mentees or /mentees.json
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

  # PATCH/PUT /mentees/1 or /mentees/1.json
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

  # DELETE /mentees/1 or /mentees/1.json
  def destroy
    @mentee.destroy!

    respond_to do |format|
      format.html { redirect_to mentees_path, status: :see_other, notice: "Mentee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mentee
      @mentee = Mentee.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def mentee_params
      params.expect(mentee: [ :nome, :email, :cargo_atual, :empresa_atual, :mini_bio ])
    end
end
