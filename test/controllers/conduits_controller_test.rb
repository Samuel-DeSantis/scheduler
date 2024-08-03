require "test_helper"

class ConduitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conduit = conduits(:one)
  end

  test "should get index" do
    get conduits_url
    assert_response :success
  end

  test "should get new" do
    get new_conduit_url
    assert_response :success
  end

  test "should create conduit" do
    assert_difference("Conduit.count") do
      post conduits_url, params: { conduit: { from: @conduit.from, project_id: @conduit.project_id, size: @conduit.size, tag: @conduit.tag, to: @conduit.to } }
    end

    assert_redirected_to conduit_url(Conduit.last)
  end

  test "should show conduit" do
    get conduit_url(@conduit)
    assert_response :success
  end

  test "should get edit" do
    get edit_conduit_url(@conduit)
    assert_response :success
  end

  test "should update conduit" do
    patch conduit_url(@conduit), params: { conduit: { from: @conduit.from, project_id: @conduit.project_id, size: @conduit.size, tag: @conduit.tag, to: @conduit.to } }
    assert_redirected_to conduit_url(@conduit)
  end

  test "should destroy conduit" do
    assert_difference("Conduit.count", -1) do
      delete conduit_url(@conduit)
    end

    assert_redirected_to conduits_url
  end
end
