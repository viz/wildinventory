require 'test_helper'

class DisplaysControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:displays)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_display
    assert_difference('Display.count') do
      post :create, :display => { }
    end

    assert_redirected_to display_path(assigns(:display))
  end

  def test_should_show_display
    get :show, :id => displays(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => displays(:one).id
    assert_response :success
  end

  def test_should_update_display
    put :update, :id => displays(:one).id, :display => { }
    assert_redirected_to display_path(assigns(:display))
  end

  def test_should_destroy_display
    assert_difference('Display.count', -1) do
      delete :destroy, :id => displays(:one).id
    end

    assert_redirected_to displays_path
  end
end
