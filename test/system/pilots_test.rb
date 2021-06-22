require "application_system_test_case"

class PilotsTest < ApplicationSystemTestCase
  setup do
    @pilot = pilots(:one)
  end

  test "visiting the index" do
    visit pilots_url
    assert_selector "h1", text: "Pilots"
  end

  test "creating a Pilot" do
    visit pilots_url
    click_on "New Pilot"

    fill_in "Birth date", with: @pilot.birth_date
    fill_in "Document", with: @pilot.document
    fill_in "First name", with: @pilot.first_name
    fill_in "Last name", with: @pilot.last_name
    fill_in "Privilege level", with: @pilot.privilege_level
    click_on "Create Pilot"

    assert_text "Pilot was successfully created"
    click_on "Back"
  end

  test "updating a Pilot" do
    visit pilots_url
    click_on "Edit", match: :first

    fill_in "Birth date", with: @pilot.birth_date
    fill_in "Document", with: @pilot.document
    fill_in "First name", with: @pilot.first_name
    fill_in "Last name", with: @pilot.last_name
    fill_in "Privilege level", with: @pilot.privilege_level
    click_on "Update Pilot"

    assert_text "Pilot was successfully updated"
    click_on "Back"
  end

  test "destroying a Pilot" do
    visit pilots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pilot was successfully destroyed"
  end
end
