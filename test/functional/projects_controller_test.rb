require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  test "should get createComic" do
    get :createComic
    assert_response :success
  end

end
