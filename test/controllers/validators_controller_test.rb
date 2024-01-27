require "test_helper"

class ValidatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @validator = validators(:one)
  end

  test "should get index" do
    get validators_url
    assert_response :success
  end

  test "should get new" do
    get new_validator_url
    assert_response :success
  end

  test "should create validator" do
    assert_difference("Validator.count") do
      post validators_url, params: { validator: {  } }
    end

    assert_redirected_to validator_url(Validator.last)
  end

  test "should show validator" do
    get validator_url(@validator)
    assert_response :success
  end

  test "should get edit" do
    get edit_validator_url(@validator)
    assert_response :success
  end

  test "should update validator" do
    patch validator_url(@validator), params: { validator: {  } }
    assert_redirected_to validator_url(@validator)
  end

  test "should destroy validator" do
    assert_difference("Validator.count", -1) do
      delete validator_url(@validator)
    end

    assert_redirected_to validators_url
  end
end
