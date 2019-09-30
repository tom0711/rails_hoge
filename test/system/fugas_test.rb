require "application_system_test_case"

class FugasTest < ApplicationSystemTestCase
  setup do
    @fuga = fugas(:one)
  end

  test "visiting the index" do
    visit fugas_url
    assert_selector "h1", text: "Fugas"
  end

  test "creating a Fuga" do
    visit fugas_url
    click_on "New Fuga"

    click_on "Create Fuga"

    assert_text "Fuga was successfully created"
    click_on "Back"
  end

  test "updating a Fuga" do
    visit fugas_url
    click_on "Edit", match: :first

    click_on "Update Fuga"

    assert_text "Fuga was successfully updated"
    click_on "Back"
  end

  test "destroying a Fuga" do
    visit fugas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fuga was successfully destroyed"
  end
end
