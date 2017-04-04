require 'test_helper'

class CallcenterFilesControllerTest < ActionController::TestCase
  setup do
    @callcenter_file = callcenter_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:callcenter_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create callcenter_file" do
    assert_difference('CallcenterFile.count') do
      post :create, callcenter_file: { baitai_shousai: @callcenter_file.baitai_shousai, baitaimei: @callcenter_file.baitaimei, call_kekka: @callcenter_file.call_kekka, check: @callcenter_file.check, file_name: @callcenter_file.file_name, kibou_iin: @callcenter_file.kibou_iin, marketing: @callcenter_file.marketing, nyuden_jikoku: @callcenter_file.nyuden_jikoku, nyudenbi: @callcenter_file.nyudenbi, raiinsha_denwa: @callcenter_file.raiinsha_denwa, raiinsha_jusyo: @callcenter_file.raiinsha_jusyo, raiinsha_seibetsu: @callcenter_file.raiinsha_seibetsu, raiinshamei_kana: @callcenter_file.raiinshamei_kana, raiinshamei_kanji: @callcenter_file.raiinshamei_kanji, raiinsya_yubinbangou: @callcenter_file.raiinsya_yubinbangou, shoshin_yoyakubi: @callcenter_file.shoshin_yoyakubi, shoshin_yoyakujikoku: @callcenter_file.shoshin_yoyakujikoku, tokki_jikou: @callcenter_file.tokki_jikou, uketsuke_id: @callcenter_file.uketsuke_id, uketsuke_kubun: @callcenter_file.uketsuke_kubun, uketsuke_sha: @callcenter_file.uketsuke_sha, yoyaku_kubun: @callcenter_file.yoyaku_kubun }
    end

    assert_redirected_to callcenter_file_path(assigns(:callcenter_file))
  end

  test "should show callcenter_file" do
    get :show, id: @callcenter_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @callcenter_file
    assert_response :success
  end

  test "should update callcenter_file" do
    patch :update, id: @callcenter_file, callcenter_file: { baitai_shousai: @callcenter_file.baitai_shousai, baitaimei: @callcenter_file.baitaimei, call_kekka: @callcenter_file.call_kekka, check: @callcenter_file.check, file_name: @callcenter_file.file_name, kibou_iin: @callcenter_file.kibou_iin, marketing: @callcenter_file.marketing, nyuden_jikoku: @callcenter_file.nyuden_jikoku, nyudenbi: @callcenter_file.nyudenbi, raiinsha_denwa: @callcenter_file.raiinsha_denwa, raiinsha_jusyo: @callcenter_file.raiinsha_jusyo, raiinsha_seibetsu: @callcenter_file.raiinsha_seibetsu, raiinshamei_kana: @callcenter_file.raiinshamei_kana, raiinshamei_kanji: @callcenter_file.raiinshamei_kanji, raiinsya_yubinbangou: @callcenter_file.raiinsya_yubinbangou, shoshin_yoyakubi: @callcenter_file.shoshin_yoyakubi, shoshin_yoyakujikoku: @callcenter_file.shoshin_yoyakujikoku, tokki_jikou: @callcenter_file.tokki_jikou, uketsuke_id: @callcenter_file.uketsuke_id, uketsuke_kubun: @callcenter_file.uketsuke_kubun, uketsuke_sha: @callcenter_file.uketsuke_sha, yoyaku_kubun: @callcenter_file.yoyaku_kubun }
    assert_redirected_to callcenter_file_path(assigns(:callcenter_file))
  end

  test "should destroy callcenter_file" do
    assert_difference('CallcenterFile.count', -1) do
      delete :destroy, id: @callcenter_file
    end

    assert_redirected_to callcenter_files_path
  end
end
