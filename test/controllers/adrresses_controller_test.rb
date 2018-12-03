require 'test_helper'

class AdrressesControllerTest < ActionController::TestCase
  setup do
    @adrress = adrresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adrresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adrress" do
    assert_difference('Adrress.count') do
      post :create, adrress: { city: @adrress.city, contact_id: @adrress.contact_id, state: @adrress.state, street: @adrress.street }
    end

    assert_redirected_to adrress_path(assigns(:adrress))
  end

  test "should show adrress" do
    get :show, id: @adrress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adrress
    assert_response :success
  end

  test "should update adrress" do
    patch :update, id: @adrress, adrress: { city: @adrress.city, contact_id: @adrress.contact_id, state: @adrress.state, street: @adrress.street }
    assert_redirected_to adrress_path(assigns(:adrress))
  end

  test "should destroy adrress" do
    assert_difference('Adrress.count', -1) do
      delete :destroy, id: @adrress
    end

    assert_redirected_to adrresses_path
  end
end
