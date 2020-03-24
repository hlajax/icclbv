require "application_system_test_case"

class StatutsTest < ApplicationSystemTestCase
  setup do
    @statut = statuts(:one)
  end

  test "visiting the index" do
    visit statuts_url
    assert_selector "h1", text: "Statuts"
  end

  test "creating a Statut" do
    visit statuts_url
    click_on "New Statut"

    fill_in "Libelle", with: @statut.libelle
    click_on "Create Statut"

    assert_text "Statut was successfully created"
    click_on "Back"
  end

  test "updating a Statut" do
    visit statuts_url
    click_on "Edit", match: :first

    fill_in "Libelle", with: @statut.libelle
    click_on "Update Statut"

    assert_text "Statut was successfully updated"
    click_on "Back"
  end

  test "destroying a Statut" do
    visit statuts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Statut was successfully destroyed"
  end
end
