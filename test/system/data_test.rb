require "application_system_test_case"

class DataTest < ApplicationSystemTestCase
  setup do
    @datum = data(:one)
  end

  test "visiting the index" do
    visit data_url
    assert_selector "h1", text: "Data"
  end

  test "creating a Datum" do
    visit data_url
    click_on "New Datum"

    fill_in "Airport", with: @datum.airport_id
    fill_in "Date", with: @datum.date
    fill_in "Flight", with: @datum.flight_id
    fill_in "Flight phase", with: @datum.flight_phase
    fill_in "Report", with: @datum.report_id
    fill_in "Weather", with: @datum.weather_id
    click_on "Create Datum"

    assert_text "Datum was successfully created"
    click_on "Back"
  end

  test "updating a Datum" do
    visit data_url
    click_on "Edit", match: :first

    fill_in "Airport", with: @datum.airport_id
    fill_in "Date", with: @datum.date
    fill_in "Flight", with: @datum.flight_id
    fill_in "Flight phase", with: @datum.flight_phase
    fill_in "Report", with: @datum.report_id
    fill_in "Weather", with: @datum.weather_id
    click_on "Update Datum"

    assert_text "Datum was successfully updated"
    click_on "Back"
  end

  test "destroying a Datum" do
    visit data_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Datum was successfully destroyed"
  end
end
