class ValidatorsController < ApplicationController
  before_action :set_validator, only: %i[ show edit update destroy ]

  # GET /validators or /validators.json
  def index
    @validators = Validator.all
  end

  # GET /validators/1 or /validators/1.json
  def show
  end

  # GET /validators/new
  def new
    @validator = Validator.new
  end

  # GET /validators/1/edit
  def edit
  end

  # POST /validators or /validators.json
  def create
    @validator = Validator.new(validator_params)

    respond_to do |format|
      if @validator.save
        format.html { redirect_to validator_url(@validator), notice: "Validator was successfully created." }
        format.json { render :show, status: :created, location: @validator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @validator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /validators/1 or /validators/1.json
  def update
    respond_to do |format|
      if @validator.update(validator_params)
        format.html { redirect_to validator_url(@validator), notice: "Validator was successfully updated." }
        format.json { render :show, status: :ok, location: @validator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @validator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /validators/1 or /validators/1.json
  def destroy
    @validator.destroy!

    respond_to do |format|
      format.html { redirect_to validators_url, notice: "Validator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_validator
      @validator = Validator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def validator_params
      params.fetch(:validator, {}).permit(:pubkey, :status)
    end
end
