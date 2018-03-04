require 'test_helper'

class ListaProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lista_produto = lista_produtos(:one)
  end

  test "should get index" do
    get lista_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_lista_produto_url
    assert_response :success
  end

  test "should create lista_produto" do
    assert_difference('ListaProduto.count') do
      post lista_produtos_url, params: { lista_produto: { produto_id: @lista_produto.produto_id, quantidade: @lista_produto.quantidade } }
    end

    assert_redirected_to lista_produto_url(ListaProduto.last)
  end

  test "should show lista_produto" do
    get lista_produto_url(@lista_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_lista_produto_url(@lista_produto)
    assert_response :success
  end

  test "should update lista_produto" do
    patch lista_produto_url(@lista_produto), params: { lista_produto: { produto_id: @lista_produto.produto_id, quantidade: @lista_produto.quantidade } }
    assert_redirected_to lista_produto_url(@lista_produto)
  end

  test "should destroy lista_produto" do
    assert_difference('ListaProduto.count', -1) do
      delete lista_produto_url(@lista_produto)
    end

    assert_redirected_to lista_produtos_url
  end
end
