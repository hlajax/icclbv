require "application_system_test_case"

class SexesTest < ApplicationSystemTestCase
  setup do
    @sex = sexes(:one)
  end

  test "visiting the index" do
    visit sexes_url
    assert_selector "h1", text: "Sexes"
  end

  test "creating a Sexe" do
    visit sexes_url
    click_on "New Sexe"

    fill_in "Libelle", with: @sex.libelle
    click_on "Create Sexe"

    assert_text "Sexe was successfully created"
    click_on "Back"
  end

  test "updating a Sexe" do
    visit sexes_url
    click_on "Edit", match: :first

    fill_in "Libelle", with: @sex.libelle
    click_on "Update Sexe"

    assert_text "Sexe was successfully updated"
    click_on "Back"
  end

  test "destroying a Sexe" do
    visit sexes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sexe was successfully destroyed"
  end
end
