require 'test_helper'

class ShareablesControllerTest < ActionController::TestCase
  setup do
    @shareable = shareables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shareables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shareable" do
    assert_difference('Shareable.count') do
      post :create, shareable: { is_public: @shareable.is_public, link: @shareable.link, title: @shareable.title }
    end

    assert_redirected_to shareable_path(assigns(:shareable))
  end

  test "should show shareable" do
    get :show, id: @shareable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shareable
    assert_response :success
  end

  test "should update shareable" do
    patch :update, id: @shareable, shareable: { is_public: @shareable.is_public, link: @shareable.link, title: @shareable.title }
    assert_redirected_to shareable_path(assigns(:shareable))
  end

  test "should destroy shareable" do
    assert_difference('Shareable.count', -1) do
      delete :destroy, id: @shareable
    end

    assert_redirected_to shareables_path
  end
end
