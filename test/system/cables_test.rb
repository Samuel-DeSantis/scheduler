require "application_system_test_case"

class CablesTest < ApplicationSystemTestCase
  setup do
    @cable = cables(:one)
  end

  test "visiting the index" do
    visit cables_url
    assert_selector "h1", text: "Cables"
  end

  test "should create cable" do
    visit cables_url
    click_on "New cable"

    fill_in "Conductors", with: @cable.conductors
    fill_in "Conduit", with: @cable.conduit_id
    fill_in "Od", with: @cable.od
    fill_in "Size", with: @cable.size
    fill_in "Tag", with: @cable.tag
    click_on "Create Cable"

    assert_text "Cable was successfully created"
    click_on "Back"
  end

  test "should update Cable" do
    visit cable_url(@cable)
    click_on "Edit this cable", match: :first

    fill_in "Conductors", with: @cable.conductors
    fill_in "Conduit", with: @cable.conduit_id
    fill_in "Od", with: @cable.od
    fill_in "Size", with: @cable.size
    fill_in "Tag", with: @cable.tag
    click_on "Update Cable"

    assert_text "Cable was successfully updated"
    click_on "Back"
  end

  test "should destroy Cable" do
    visit cable_url(@cable)
    click_on "Destroy this cable", match: :first

    assert_text "Cable was successfully destroyed"
  end
end
