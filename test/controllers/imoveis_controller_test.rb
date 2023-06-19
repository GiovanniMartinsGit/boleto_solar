require 'test_helper'

class ImoveisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imovel = imoveis(:one)
  end

  test "should get index" do
    get imoveis_url
    assert_response :success
  end

  test "should get new" do
    get new_imovel_url
    assert_response :success
  end

  test "should create imovel" do
    assert_difference('Imovel.count') do
      post imoveis_url, params: { imovel: { endereco: @imovel.endereco, morador_id: @imovel.morador_id } }
    end

    assert_redirected_to imovel_url(Imovel.last)
  end

  test "should show imovel" do
    get imovel_url(@imovel)
    assert_response :success
  end

  test "should get edit" do
    get edit_imovel_url(@imovel)
    assert_response :success
  end

  test "should update imovel" do
    patch imovel_url(@imovel), params: { imovel: { endereco: @imovel.endereco, morador_id: @imovel.morador_id } }
    assert_redirected_to imovel_url(@imovel)
  end

  test "should destroy imovel" do
    assert_difference('Imovel.count', -1) do
      delete imovel_url(@imovel)
    end

    assert_redirected_to imoveis_url
  end
end
