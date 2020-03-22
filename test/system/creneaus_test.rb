require "application_system_test_case"

class CreneausTest < ApplicationSystemTestCase
  setup do
    @creneau = creneaus(:one)
  end

  test "visiting the index" do
    visit creneaus_url
    assert_selector "h1", text: "Creneaus"
  end

  test "creating a Creneau" do
    visit creneaus_url
    click_on "New Creneau"

    fill_in "Titre", with: @creneau.titre
    click_on "Create Creneau"

    assert_text "Creneau was successfully created"
    click_on "Back"
  end

  test "updating a Creneau" do
    visit creneaus_url
    click_on "Edit", match: :first

    fill_in "Titre", with: @creneau.titre
    click_on "Update Creneau"

    assert_text "Creneau was successfully updated"
    click_on "Back"
  end

  test "destroying a Creneau" do
    visit creneaus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creneau was successfully destroyed"
  end
end
