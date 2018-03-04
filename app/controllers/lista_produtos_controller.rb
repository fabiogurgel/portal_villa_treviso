class ListaProdutosController < ApplicationController
  before_action :set_lista_produto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_usuario!

  # GET /lista_produtos
  # GET /lista_produtos.json
  def index
    @lista_produtos = ListaProduto.all
  end

  # GET /lista_produtos/1
  # GET /lista_produtos/1.json
  def show
  end

  # GET /lista_produtos/new
  def new
    @lista_produto = ListaProduto.new
  end

  # GET /lista_produtos/1/edit
  def edit
  end

  # POST /lista_produtos
  # POST /lista_produtos.json
  def create
    @lista_produto = ListaProduto.new(lista_produto_params)

    respond_to do |format|
      if @lista_produto.save
        format.html { redirect_to @lista_produto, notice: 'Lista produto was successfully created.' }
        format.json { render :show, status: :created, location: @lista_produto }
      else
        format.html { render :new }
        format.json { render json: @lista_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_produtos/1
  # PATCH/PUT /lista_produtos/1.json
  def update
    respond_to do |format|
      if @lista_produto.update(lista_produto_params)
        format.html { redirect_to @lista_produto, notice: 'Lista produto was successfully updated.' }
        format.json { render :show, status: :ok, location: @lista_produto }
      else
        format.html { render :edit }
        format.json { render json: @lista_produto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_produtos/1
  # DELETE /lista_produtos/1.json
  def destroy
    @lista_produto.destroy
    respond_to do |format|
      format.html { redirect_to lista_produtos_url, notice: 'Lista produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_produto
      @lista_produto = ListaProduto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lista_produto_params
      params.require(:lista_produto).permit(:produto_id, :quantidade)
    end
end
