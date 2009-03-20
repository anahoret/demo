require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, :comment => { }
    end

    assert_redirected_to root_url
  end
end
