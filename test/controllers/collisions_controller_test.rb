require "test_helper"

class CollisionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collision = collisions(:one)
  end

  test "should get index" do
    get collisions_url
    assert_response :success
  end

  test "should get new" do
    get new_collision_url
    assert_response :success
  end

  test "should create collision" do
    assert_difference('Collision.count') do
      post collisions_url, params: { collision: { bird_id: @collision.bird_id, datum_id: @collision.datum_id } }
    end

    assert_redirected_to collision_url(Collision.last)
  end

  test "should show collision" do
    get collision_url(@collision)
    assert_response :success
  end

  test "should get edit" do
    get edit_collision_url(@collision)
    assert_response :success
  end

  test "should update collision" do
    patch collision_url(@collision), params: { collision: { bird_id: @collision.bird_id, datum_id: @collision.datum_id } }
    assert_redirected_to collision_url(@collision)
  end

  test "should destroy collision" do
    assert_difference('Collision.count', -1) do
      delete collision_url(@collision)
    end

    assert_redirected_to collisions_url
  end
end
