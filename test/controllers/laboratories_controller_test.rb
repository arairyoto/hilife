require 'test_helper'

class LaboratoriesControllerTest < ActionController::TestCase
  setup do
    @laboratory = laboratories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laboratories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laboratory" do
    assert_difference('Laboratory.count') do
      post :create, laboratory: { address: @laboratory.address, email: @laboratory.email, fax: @laboratory.fax, hd_name: @laboratory.hd_name, name: @laboratory.name, remarks: @laboratory.remarks, tel: @laboratory.tel, zip_code: @laboratory.zip_code }
    end

    assert_redirected_to laboratory_path(assigns(:laboratory))
  end

  test "should show laboratory" do
    get :show, id: @laboratory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laboratory
    assert_response :success
  end

  test "should update laboratory" do
    patch :update, id: @laboratory, laboratory: { address: @laboratory.address, email: @laboratory.email, fax: @laboratory.fax, hd_name: @laboratory.hd_name, name: @laboratory.name, remarks: @laboratory.remarks, tel: @laboratory.tel, zip_code: @laboratory.zip_code }
    assert_redirected_to laboratory_path(assigns(:laboratory))
  end

  test "should destroy laboratory" do
    assert_difference('Laboratory.count', -1) do
      delete :destroy, id: @laboratory
    end

    assert_redirected_to laboratories_path
  end
end
