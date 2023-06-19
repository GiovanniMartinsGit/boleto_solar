class TaxasController < ApplicationController
  before_action :set_taxa, only: %i[ show edit update destroy ]

  # GET /taxas or /taxas.json
  def index
    @taxas = Taxa.all
  end

  # GET /taxas/1 or /taxas/1.json
  def show
  end

  # GET /taxas/new
  def new
    @taxa = Taxa.new
  end

  # GET /taxas/1/edit
  def edit
  end

  # POST /taxas or /taxas.json
  def create
    @taxa = Taxa.new(taxa_params)

    respond_to do |format|
      if @taxa.save
        format.html { redirect_to taxa_url(@taxa), notice: "Taxa was successfully created." }
        format.json { render :show, status: :created, location: @taxa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @taxa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxas/1 or /taxas/1.json
  def update
    respond_to do |format|
      if @taxa.update(taxa_params)
        format.html { redirect_to taxa_url(@taxa), notice: "Taxa was successfully updated." }
        format.json { render :show, status: :ok, location: @taxa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @taxa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxas/1 or /taxas/1.json
  def destroy
    @taxa.destroy

    respond_to do |format|
      format.html { redirect_to taxas_url, notice: "Taxa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxa
      @taxa = Taxa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def taxa_params
      params.require(:taxa).permit(:valor_kwh, :valor_bandeira)
    end
end
