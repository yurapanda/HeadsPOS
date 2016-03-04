require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post :create, item: { amount_sold: @item.amount_sold, category_id: @item.category_id, cost_price: @item.cost_price, description: @item.description, item_type_id: @item.item_type_id, level_id: @item.level_id, name: @item.name, price: @item.price, sku: @item.sku, stock_amount: @item.stock_amount }
    end

    assert_redirected_to item_path(assigns(:item))
  end

  test "should show item" do
    get :show, id: @item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item
    assert_response :success
  end

  test "should update item" do
    patch :update, id: @item, item: { amount_sold: @item.amount_sold, category_id: @item.category_id, cost_price: @item.cost_price, description: @item.description, item_type_id: @item.item_type_id, level_id: @item.level_id, name: @item.name, price: @item.price, sku: @item.sku, stock_amount: @item.stock_amount }
    assert_redirected_to item_path(assigns(:item))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, id: @item
    end

    assert_redirected_to items_path
  end
end
