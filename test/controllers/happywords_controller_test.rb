require 'test_helper'

class HappywordsControllerTest < ActionController::TestCase
  setup do
    @happyword = happywords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:happywords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create happyword" do
    assert_difference('Happyword.count') do
      post :create, happyword: { genre: @happyword.genre, phrase: @happyword.phrase }
    end

    assert_redirected_to happyword_path(assigns(:happyword))
  end

  test "should show happyword" do
    get :show, id: @happyword
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @happyword
    assert_response :success
  end

  test "should update happyword" do
    patch :update, id: @happyword, happyword: { genre: @happyword.genre, phrase: @happyword.phrase }
    assert_redirected_to happyword_path(assigns(:happyword))
  end

  test "should destroy happyword" do
    assert_difference('Happyword.count', -1) do
      delete :destroy, id: @happyword
    end

    assert_redirected_to happywords_path
  end
end
