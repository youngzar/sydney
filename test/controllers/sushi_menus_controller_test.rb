require 'test_helper'

class SushiMenusControllerTest < ActionController::TestCase
  setup do
    @sushi_menu = sushi_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sushi_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sushi_menu" do
    assert_difference('SushiMenu.count') do
      post :create, sushi_menu: { food_type: @sushi_menu.food_type, has_order: @sushi_menu.has_order, menus: @sushi_menu.menus }
    end

    assert_redirected_to sushi_menu_path(assigns(:sushi_menu))
  end

  test "should show sushi_menu" do
    get :show, id: @sushi_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sushi_menu
    assert_response :success
  end

  test "should update sushi_menu" do
    patch :update, id: @sushi_menu, sushi_menu: { food_type: @sushi_menu.food_type, has_order: @sushi_menu.has_order, menus: @sushi_menu.menus }
    assert_redirected_to sushi_menu_path(assigns(:sushi_menu))
  end

  test "should destroy sushi_menu" do
    assert_difference('SushiMenu.count', -1) do
      delete :destroy, id: @sushi_menu
    end

    assert_redirected_to sushi_menus_path
  end
end
