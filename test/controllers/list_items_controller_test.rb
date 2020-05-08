require 'test_helper'

class ListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_item = list_items(:one)
  end

  test "should get index" do
    get list_items_url, as: :json
    assert_response :success
  end

  test "should create list_item" do
    assert_difference('ListItem.count') do
      post list_items_url, params: { list_item: { description: @list_item.description, name: @list_item.name } }, as: :json
    end

    assert_response 201
  end

  test "should show list_item" do
    get list_item_url(@list_item), as: :json
    assert_response :success
  end

  test "should update list_item" do
    patch list_item_url(@list_item), params: { list_item: { description: @list_item.description, name: @list_item.name } }, as: :json
    assert_response 200
  end

  test "should destroy list_item" do
    assert_difference('ListItem.count', -1) do
      delete list_item_url(@list_item), as: :json
    end

    assert_response 204
  end
end
