require 'test_helper'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test "should get index" do
    get list_cards_url(@card.list), as: :json
    assert_response :success
  end

  test "should create card" do
    assert_difference('Card.count') do
      post list_cards_url(@card.list), params: { card: { list_id: @card.list_id, text: @card.text } }, as: :json
    end

    assert_response 201
  end

  test "should show card" do
    get card_url(@card), as: :json
    assert_response :success
  end

  test "should update card" do
    patch card_url(@card), params: { card: { list_id: @card.list_id, text: @card.text } }, as: :json
    assert_response 200
  end

  test "should destroy card" do
    assert_difference('Card.count', -1) do
      delete card_url(@card), as: :json
    end

    assert_response 204
  end
end
