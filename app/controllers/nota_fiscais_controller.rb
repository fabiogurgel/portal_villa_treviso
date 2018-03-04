class NotaFiscaisController < ApplicationController
  before_action :set_nota_fiscal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /nota_fiscais
  # GET /nota_fiscais.json
  def index
    @nota_fiscais = NotaFiscal.all
  end

  # GET /nota_fiscais/1
  # GET /nota_fiscais/1.json
  def show
  end

  # GET /nota_fiscais/new
  def new
    @nota_fiscal = NotaFiscal.new
  end

  # GET /nota_fiscais/1/edit
  def edit
  end

  # POST /nota_fiscais
  # POST /nota_fiscais.json
  def create
    @nota_fiscal = NotaFiscal.new(nota_fiscal_params)

    respond_to do |format|
      if @nota_fiscal.save
        format.html { redirect_to @nota_fiscal, notice: 'Nota fiscal was successfully created.' }
        format.json { render :show, status: :created, location: @nota_fiscal }
      else
        format.html { render :new }
        format.json { render json: @nota_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nota_fiscais/1
  # PATCH/PUT /nota_fiscais/1.json
  def update
    respond_to do |format|
      if @nota_fiscal.update(nota_fiscal_params)
        format.html { redirect_to @nota_fiscal, notice: 'Nota fiscal was successfully updated.' }
        format.json { render :show, status: :ok, location: @nota_fiscal }
      else
        format.html { render :edit }
        format.json { render json: @nota_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_fiscais/1
  # DELETE /nota_fiscais/1.json
  def destroy
    @nota_fiscal.destroy
    respond_to do |format|
      format.html { redirect_to nota_fiscais_url, notice: 'Nota fiscal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_fiscal
      @nota_fiscal = NotaFiscal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_fiscal_params
      params.require(:nota_fiscal).permit(:fornecedor_id, :codigo, :numero, :data, :valor, :quantidade)
    end
end
