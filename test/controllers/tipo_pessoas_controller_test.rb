require 'test_helper'

class TipoPessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_pessoa = tipo_pessoas(:one)
  end

  test "should get index" do
    get tipo_pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_pessoa_url
    assert_response :success
  end

  test "should create tipo_pessoa" do
    assert_difference('TipoPessoa.count') do
      post tipo_pessoas_url, params: { tipo_pessoa: { ativo: @tipo_pessoa.ativo, codigo: @tipo_pessoa.codigo, descricao: @tipo_pessoa.descricao } }
    end

    assert_redirected_to tipo_pessoa_url(TipoPessoa.last)
  end

  test "should show tipo_pessoa" do
    get tipo_pessoa_url(@tipo_pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_pessoa_url(@tipo_pessoa)
    assert_response :success
  end

  test "should update tipo_pessoa" do
    patch tipo_pessoa_url(@tipo_pessoa), params: { tipo_pessoa: { ativo: @tipo_pessoa.ativo, codigo: @tipo_pessoa.codigo, descricao: @tipo_pessoa.descricao } }
    assert_redirected_to tipo_pessoa_url(@tipo_pessoa)
  end

  test "should destroy tipo_pessoa" do
    assert_difference('TipoPessoa.count', -1) do
      delete tipo_pessoa_url(@tipo_pessoa)
    end

    assert_redirected_to tipo_pessoas_url
  end
end
