require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @like = @user.likes.build(micropost_id: 1)
  end
  
  test "should be valid" do
    assert @like.valid?
  end
  
  test "user id should be present" do
    @like.user_id = nil
    assert_not @like.valid?
  end
  
  test "micropost id should be present" do
    @like.micropost_id = nil
    assert_not @like.valid?
  end
end
