class ImoveisController < ApplicationController
  before_action :set_imovel, only: %i[ show edit update destroy ]

  # GET /imoveis or /imoveis.json
  def index
    @imoveis = Imovel.all
  end

  # GET /imoveis/1 or /imoveis/1.json
  def show
  end

  # GET /imoveis/new
  def new
    @imovel = Imovel.new
  end

  # GET /imoveis/1/edit
  def edit
  end

  # POST /imoveis or /imoveis.json
  def create
    @imovel = Imovel.new(imovel_params)

    respond_to do |format|
      if @imovel.save
        format.html { redirect_to imovel_url(@imovel), notice: "Imovel was successfully created." }
        format.json { render :show, status: :created, location: @imovel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imoveis/1 or /imoveis/1.json
  def update
    respond_to do |format|
      if @imovel.update(imovel_params)
        format.html { redirect_to imovel_url(@imovel), notice: "Imovel was successfully updated." }
        format.json { render :show, status: :ok, location: @imovel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @imovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imoveis/1 or /imoveis/1.json
  def destroy
    @imovel.destroy

    respond_to do |format|
      format.html { redirect_to imoveis_url, notice: "Imovel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imovel
      @imovel = Imovel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def imovel_params
      params.require(:imovel).permit(:endereco, :morador_id)
    end
end
