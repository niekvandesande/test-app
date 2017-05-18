require 'test_helper'

class WebHostingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_hosting = web_hostings(:one)
  end

  test "should get index" do
    get web_hostings_url
    assert_response :success
  end

  test "should get new" do
    get new_web_hosting_url
    assert_response :success
  end

  test "should create web_hosting" do
    assert_difference('WebHosting.count') do
      post web_hostings_url, params: { web_hosting: { context: @web_hosting.context, image: @web_hosting.image, title: @web_hosting.title } }
    end

    assert_redirected_to web_hosting_url(WebHosting.last)
  end

  test "should show web_hosting" do
    get web_hosting_url(@web_hosting)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_hosting_url(@web_hosting)
    assert_response :success
  end

  test "should update web_hosting" do
    patch web_hosting_url(@web_hosting), params: { web_hosting: { context: @web_hosting.context, image: @web_hosting.image, title: @web_hosting.title } }
    assert_redirected_to web_hosting_url(@web_hosting)
  end

  test "should destroy web_hosting" do
    assert_difference('WebHosting.count', -1) do
      delete web_hosting_url(@web_hosting)
    end

    assert_redirected_to web_hostings_url
  end
end
