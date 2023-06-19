require 'test_helper'

class TaxasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taxa = taxas(:one)
  end

  test "should get index" do
    get taxas_url
    assert_response :success
  end

  test "should get new" do
    get new_taxa_url
    assert_response :success
  end

  test "should create taxa" do
    assert_difference('Taxa.count') do
      post taxas_url, params: { taxa: { valor_bandeira: @taxa.valor_bandeira, valor_kwh: @taxa.valor_kwh } }
    end

    assert_redirected_to taxa_url(Taxa.last)
  end

  test "should show taxa" do
    get taxa_url(@taxa)
    assert_response :success
  end

  test "should get edit" do
    get edit_taxa_url(@taxa)
    assert_response :success
  end

  test "should update taxa" do
    patch taxa_url(@taxa), params: { taxa: { valor_bandeira: @taxa.valor_bandeira, valor_kwh: @taxa.valor_kwh } }
    assert_redirected_to taxa_url(@taxa)
  end

  test "should destroy taxa" do
    assert_difference('Taxa.count', -1) do
      delete taxa_url(@taxa)
    end

    assert_redirected_to taxas_url
  end
end
