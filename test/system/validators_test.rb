require "application_system_test_case"

class ValidatorsTest < ApplicationSystemTestCase
  setup do
    @validator = validators(:one)
  end

  test "visiting the index" do
    visit validators_url
    assert_selector "h1", text: "Validators"
  end

  test "should create validator" do
    visit validators_url
    click_on "New validator"

    click_on "Create Validator"

    assert_text "Validator was successfully created"
    click_on "Back"
  end

  test "should update Validator" do
    visit validator_url(@validator)
    click_on "Edit this validator", match: :first

    click_on "Update Validator"

    assert_text "Validator was successfully updated"
    click_on "Back"
  end

  test "should destroy Validator" do
    visit validator_url(@validator)
    click_on "Destroy this validator", match: :first

    assert_text "Validator was successfully destroyed"
  end
end
