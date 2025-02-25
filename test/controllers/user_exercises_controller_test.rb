require "test_helper"

class UserExercisesControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get user_exercises_update_url
    assert_response :success
  end
end
