require "application_system_test_case"

class AircraftsTest < ApplicationSystemTestCase
  setup do
    @aircraft = aircrafts(:one)
  end

  test "visiting the index" do
    visit aircrafts_url
    assert_selector "h1", text: "Aircrafts"
  end

  test "creating a Aircraft" do
    visit aircrafts_url
    click_on "New Aircraft"

    fill_in "Category", with: @aircraft.category
    fill_in "Certification", with: @aircraft.certification
    fill_in "Model", with: @aircraft.model
    click_on "Create Aircraft"

    assert_text "Aircraft was successfully created"
    click_on "Back"
  end

  test "updating a Aircraft" do
    visit aircrafts_url
    click_on "Edit", match: :first

    fill_in "Category", with: @aircraft.category
    fill_in "Certification", with: @aircraft.certification
    fill_in "Model", with: @aircraft.model
    click_on "Update Aircraft"

    assert_text "Aircraft was successfully updated"
    click_on "Back"
  end

  test "destroying a Aircraft" do
    visit aircrafts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aircraft was successfully destroyed"
  end
end
