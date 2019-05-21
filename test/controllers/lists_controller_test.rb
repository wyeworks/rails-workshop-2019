require 'test_helper'

class ListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get board_lists_url(board_id: @list.board), as: :json
    assert_response :success
  end
end
