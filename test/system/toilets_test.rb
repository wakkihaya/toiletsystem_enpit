require "application_system_test_case"

class ToiletsTest < ApplicationSystemTestCase
  setup do
    @toilet = toilets(:one)
  end

  test "visiting the index" do
    visit toilets_url
    assert_selector "h1", text: "Toilets"
  end

  test "creating a Toilet" do
    visit toilets_url
    click_on "New Toilet"

    fill_in "Comment", with: @toilet.comment
    fill_in "Name", with: @toilet.name
    click_on "Create Toilet"

    assert_text "Toilet was successfully created"
    click_on "Back"
  end

  test "updating a Toilet" do
    visit toilets_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @toilet.comment
    fill_in "Name", with: @toilet.name
    click_on "Update Toilet"

    assert_text "Toilet was successfully updated"
    click_on "Back"
  end

  test "destroying a Toilet" do
    visit toilets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Toilet was successfully destroyed"
  end
end
