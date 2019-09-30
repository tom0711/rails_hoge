require 'test_helper'

class FugasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuga = fugas(:one)
  end

  test "should get index" do
    get fugas_url
    assert_response :success
  end

  test "should get new" do
    get new_fuga_url
    assert_response :success
  end

  test "should create fuga" do
    assert_difference('Fuga.count') do
      post fugas_url, params: { fuga: {  } }
    end

    assert_redirected_to fuga_url(Fuga.last)
  end

  test "should show fuga" do
    get fuga_url(@fuga)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuga_url(@fuga)
    assert_response :success
  end

  test "should update fuga" do
    patch fuga_url(@fuga), params: { fuga: {  } }
    assert_redirected_to fuga_url(@fuga)
  end

  test "should destroy fuga" do
    assert_difference('Fuga.count', -1) do
      delete fuga_url(@fuga)
    end

    assert_redirected_to fugas_url
  end
end
