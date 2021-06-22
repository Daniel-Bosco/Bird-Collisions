require "application_system_test_case"

class CollisionsTest < ApplicationSystemTestCase
  setup do
    @collision = collisions(:one)
  end

  test "visiting the index" do
    visit collisions_url
    assert_selector "h1", text: "Collisions"
  end

  test "creating a Collision" do
    visit collisions_url
    click_on "New Collision"

    fill_in "Bird", with: @collision.bird_id
    fill_in "Datum", with: @collision.datum_id
    click_on "Create Collision"

    assert_text "Collision was successfully created"
    click_on "Back"
  end

  test "updating a Collision" do
    visit collisions_url
    click_on "Edit", match: :first

    fill_in "Bird", with: @collision.bird_id
    fill_in "Datum", with: @collision.datum_id
    click_on "Update Collision"

    assert_text "Collision was successfully updated"
    click_on "Back"
  end

  test "destroying a Collision" do
    visit collisions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collision was successfully destroyed"
  end
end
