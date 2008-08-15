require 'test_helper'

class PerksControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:perks)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_perk
    assert_difference('Perk.count') do
      post :create, :perk => { }
    end

    assert_redirected_to perks_url
  end

  def test_should_show_perk
    get :show, :id => perks(:mom).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => perks(:mom).id
    assert_response :success
  end

  def test_should_update_perk
    put :update, :id => perks(:mom).id, :perk => { }
    assert_redirected_to perks_url
  end

  def test_should_destroy_perk
    assert_difference('Perk.count', -1) do
      delete :destroy, :id => perks(:mom).id
    end

    assert_redirected_to perks_path
  end
end
