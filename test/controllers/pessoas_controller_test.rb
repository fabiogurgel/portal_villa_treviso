require 'test_helper'

class PessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pessoa = pessoas(:one)
  end

  test "should get index" do
    get pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_pessoa_url
    assert_response :success
  end

  test "should create pessoa" do
    assert_difference('Pessoa.count') do
      post pessoas_url, params: { pessoa: { bairro: @pessoa.bairro, celular: @pessoa.celular, cep: @pessoa.cep, cnpj: @pessoa.cnpj, cpf: @pessoa.cpf, email: @pessoa.email, endereco: @pessoa.endereco, municipio: @pessoa.municipio, nome_razao_social: @pessoa.nome_razao_social, numero: @pessoa.numero, site: @pessoa.site, telefone: @pessoa.telefone, uf: @pessoa.uf } }
    end

    assert_redirected_to pessoa_url(Pessoa.last)
  end

  test "should show pessoa" do
    get pessoa_url(@pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pessoa_url(@pessoa)
    assert_response :success
  end

  test "should update pessoa" do
    patch pessoa_url(@pessoa), params: { pessoa: { bairro: @pessoa.bairro, celular: @pessoa.celular, cep: @pessoa.cep, cnpj: @pessoa.cnpj, cpf: @pessoa.cpf, email: @pessoa.email, endereco: @pessoa.endereco, municipio: @pessoa.municipio, nome_razao_social: @pessoa.nome_razao_social, numero: @pessoa.numero, site: @pessoa.site, telefone: @pessoa.telefone, uf: @pessoa.uf } }
    assert_redirected_to pessoa_url(@pessoa)
  end

  test "should destroy pessoa" do
    assert_difference('Pessoa.count', -1) do
      delete pessoa_url(@pessoa)
    end

    assert_redirected_to pessoas_url
  end
end
