class CreateCallcenterFiles < ActiveRecord::Migration
  def change
    create_table :callcenter_files do |t|
      t.string :file_name
      t.string :uketsuke_id
      t.string :uketsuke_kubun
      t.string :yoyaku_kubun
      t.string :nyudenbi
      t.string :nyuden_jikoku
      t.string :uketsuke_sha
      t.string :kibou_iin
      t.string :baitaimei
      t.string :baitai_shousai
      t.string :shoshin_yoyakubi
      t.string :shoshin_yoyakujikoku
      t.string :raiinshamei_kana
      t.string :raiinshamei_kanji
      t.string :raiinsha_seibetsu
      t.string :raiinsya_yubinbangou
      t.string :raiinsha_jusyo
      t.string :raiinsha_denwa
      t.string :tokki_jikou
      t.string :call_kekka
      t.string :check
      t.boolean :marketing, default:False

      t.timestamps null: false
    end
  end
end
