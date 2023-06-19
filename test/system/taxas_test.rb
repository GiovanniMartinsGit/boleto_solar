require "application_system_test_case"

class TaxasTest < ApplicationSystemTestCase
  setup do
    @taxa = taxas(:one)
  end

  test "visiting the index" do
    visit taxas_url
    assert_selector "h1", text: "Taxas"
  end

  test "creating a Taxa" do
    visit taxas_url
    click_on "New Taxa"

    fill_in "Valor bandeira", with: @taxa.valor_bandeira
    fill_in "Valor kwh", with: @taxa.valor_kwh
    click_on "Create Taxa"

    assert_text "Taxa was successfully created"
    click_on "Back"
  end

  test "updating a Taxa" do
    visit taxas_url
    click_on "Edit", match: :first

    fill_in "Valor bandeira", with: @taxa.valor_bandeira
    fill_in "Valor kwh", with: @taxa.valor_kwh
    click_on "Update Taxa"

    assert_text "Taxa was successfully updated"
    click_on "Back"
  end

  test "destroying a Taxa" do
    visit taxas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taxa was successfully destroyed"
  end
end
