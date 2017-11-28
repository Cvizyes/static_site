require 'test_helper'

class LibratiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @libraty = libraties(:one)
  end

  test "should get index" do
    get libraties_url
    assert_response :success
  end

  test "should get new" do
    get new_libraty_url
    assert_response :success
  end

  test "should create libraty" do
    assert_difference('Libraty.count') do
      post libraties_url, params: { libraty: { Pnumber: @libraty.Pnumber, name: @libraty.name } }
    end

    assert_redirected_to libraty_url(Libraty.last)
  end

  test "should show libraty" do
    get libraty_url(@libraty)
    assert_response :success
  end

  test "should get edit" do
    get edit_libraty_url(@libraty)
    assert_response :success
  end

  test "should update libraty" do
    patch libraty_url(@libraty), params: { libraty: { Pnumber: @libraty.Pnumber, name: @libraty.name } }
    assert_redirected_to libraty_url(@libraty)
  end

  test "should destroy libraty" do
    assert_difference('Libraty.count', -1) do
      delete libraty_url(@libraty)
    end

    assert_redirected_to libraties_url
  end
end
