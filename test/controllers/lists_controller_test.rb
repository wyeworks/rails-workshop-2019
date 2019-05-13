require 'test_helper'

class ListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lists = lists(:one)
  end

  test "should get index" do
    get lists_url, as: :json
    assert_response :success
  end
end
