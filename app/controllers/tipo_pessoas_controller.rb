class TipoPessoasController < ApplicationController
  before_action :set_tipo_pessoa, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /tipo_pessoas
  # GET /tipo_pessoas.json
  def index
    @tipo_pessoas = TipoPessoa.all
  end

  # GET /tipo_pessoas/1
  # GET /tipo_pessoas/1.json
  def show
  end

  # GET /tipo_pessoas/new
  def new
    @tipo_pessoa = TipoPessoa.new
  end

  # GET /tipo_pessoas/1/edit
  def edit
  end

  # POST /tipo_pessoas
  # POST /tipo_pessoas.json
  def create
    @tipo_pessoa = TipoPessoa.new(tipo_pessoa_params)

    respond_to do |format|
      if @tipo_pessoa.save
        format.html { redirect_to @tipo_pessoa, notice: 'Tipo pessoa was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_pessoa }
      else
        format.html { render :new }
        format.json { render json: @tipo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_pessoas/1
  # PATCH/PUT /tipo_pessoas/1.json
  def update
    respond_to do |format|
      if @tipo_pessoa.update(tipo_pessoa_params)
        format.html { redirect_to @tipo_pessoa, notice: 'Tipo pessoa was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_pessoa }
      else
        format.html { render :edit }
        format.json { render json: @tipo_pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_pessoas/1
  # DELETE /tipo_pessoas/1.json
  def destroy
    @tipo_pessoa.destroy
    respond_to do |format|
      format.html { redirect_to tipo_pessoas_url, notice: 'Tipo pessoa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_pessoa
      @tipo_pessoa = TipoPessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_pessoa_params
      params.require(:tipo_pessoa).permit(:codigo, :descricao, :ativo)
    end
end
