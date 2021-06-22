require "application_system_test_case"

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test "visiting the index" do
    visit reports_url
    assert_selector "h1", text: "Reports"
  end

  test "creating a Report" do
    visit reports_url
    click_on "New Report"

    fill_in "Airline expense", with: @report.airline_expense
    fill_in "Airport expense", with: @report.airport_expense
    fill_in "Delayed flights", with: @report.delayed_flights
    fill_in "Fatal victims", with: @report.fatal_victims
    fill_in "Insurance expense", with: @report.insurance_expense
    fill_in "Public expense", with: @report.public_expense
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "updating a Report" do
    visit reports_url
    click_on "Edit", match: :first

    fill_in "Airline expense", with: @report.airline_expense
    fill_in "Airport expense", with: @report.airport_expense
    fill_in "Delayed flights", with: @report.delayed_flights
    fill_in "Fatal victims", with: @report.fatal_victims
    fill_in "Insurance expense", with: @report.insurance_expense
    fill_in "Public expense", with: @report.public_expense
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "destroying a Report" do
    visit reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report was successfully destroyed"
  end
end
