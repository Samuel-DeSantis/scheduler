require "application_system_test_case"

class ConduitsTest < ApplicationSystemTestCase
  setup do
    @conduit = conduits(:one)
  end

  test "visiting the index" do
    visit conduits_url
    assert_selector "h1", text: "Conduits"
  end

  test "should create conduit" do
    visit conduits_url
    click_on "New conduit"

    fill_in "From", with: @conduit.from
    fill_in "Project", with: @conduit.project_id
    fill_in "Size", with: @conduit.size
    fill_in "Tag", with: @conduit.tag
    fill_in "To", with: @conduit.to
    click_on "Create Conduit"

    assert_text "Conduit was successfully created"
    click_on "Back"
  end

  test "should update Conduit" do
    visit conduit_url(@conduit)
    click_on "Edit this conduit", match: :first

    fill_in "From", with: @conduit.from
    fill_in "Project", with: @conduit.project_id
    fill_in "Size", with: @conduit.size
    fill_in "Tag", with: @conduit.tag
    fill_in "To", with: @conduit.to
    click_on "Update Conduit"

    assert_text "Conduit was successfully updated"
    click_on "Back"
  end

  test "should destroy Conduit" do
    visit conduit_url(@conduit)
    click_on "Destroy this conduit", match: :first

    assert_text "Conduit was successfully destroyed"
  end
end
