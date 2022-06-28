require "test_helper"

class UssersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usser = ussers(:one)
  end

  test "should get index" do
    get ussers_url
    assert_response :success
  end

  test "should get new" do
    get new_usser_url
    assert_response :success
  end

  test "should create usser" do
    assert_difference('Usser.count') do
      post ussers_url, params: { usser: { bio: @usser.bio, birthday: @usser.birthday, email: @usser.email, nombre: @usser.nombre, password: @usser.password, programa: @usser.programa, work_time: @usser.work_time } }
    end

    assert_redirected_to usser_url(Usser.last)
  end

  test "should show usser" do
    get usser_url(@usser)
    assert_response :success
  end

  test "should get edit" do
    get edit_usser_url(@usser)
    assert_response :success
  end

  test "should update usser" do
    patch usser_url(@usser), params: { usser: { bio: @usser.bio, birthday: @usser.birthday, email: @usser.email, nombre: @usser.nombre, password: @usser.password, programa: @usser.programa, work_time: @usser.work_time } }
    assert_redirected_to usser_url(@usser)
  end

  test "should destroy usser" do
    assert_difference('Usser.count', -1) do
      delete usser_url(@usser)
    end

    assert_redirected_to ussers_url
  end
end
