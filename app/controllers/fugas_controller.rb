class FugasController < ApplicationController
  before_action :set_fuga, only: [:show, :edit, :update, :destroy]

  # GET /fugas
  # GET /fugas.json
  def index
    @fugas = Fuga.all
  end

  # GET /fugas/1
  # GET /fugas/1.json
  def show
  end

  # GET /fugas/new
  def new
    @fuga = Fuga.new
  end

  # GET /fugas/1/edit
  def edit
  end

  # POST /fugas
  # POST /fugas.json
  def create
    @fuga = Fuga.new(fuga_params)

    respond_to do |format|
      if @fuga.save
        format.html { redirect_to @fuga, notice: 'Fuga was successfully created.' }
        format.json { render :show, status: :created, location: @fuga }
      else
        format.html { render :new }
        format.json { render json: @fuga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fugas/1
  # PATCH/PUT /fugas/1.json
  def update
    respond_to do |format|
      if @fuga.update(fuga_params)
        format.html { redirect_to @fuga, notice: 'Fuga was successfully updated.' }
        format.json { render :show, status: :ok, location: @fuga }
      else
        format.html { render :edit }
        format.json { render json: @fuga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fugas/1
  # DELETE /fugas/1.json
  def destroy
    @fuga.destroy
    respond_to do |format|
      format.html { redirect_to fugas_url, notice: 'Fuga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fuga
      @fuga = Fuga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fuga_params
      params.fetch(:fuga, {})
    end
end
