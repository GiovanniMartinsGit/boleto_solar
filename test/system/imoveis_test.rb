require "application_system_test_case"

class ImoveisTest < ApplicationSystemTestCase
  setup do
    @imovel = imoveis(:one)
  end

  test "visiting the index" do
    visit imoveis_url
    assert_selector "h1", text: "Imoveis"
  end

  test "creating a Imovel" do
    visit imoveis_url
    click_on "New Imovel"

    fill_in "Endereco", with: @imovel.endereco
    fill_in "Morador", with: @imovel.morador_id
    click_on "Create Imovel"

    assert_text "Imovel was successfully created"
    click_on "Back"
  end

  test "updating a Imovel" do
    visit imoveis_url
    click_on "Edit", match: :first

    fill_in "Endereco", with: @imovel.endereco
    fill_in "Morador", with: @imovel.morador_id
    click_on "Update Imovel"

    assert_text "Imovel was successfully updated"
    click_on "Back"
  end

  test "destroying a Imovel" do
    visit imoveis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imovel was successfully destroyed"
  end
end
