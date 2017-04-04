class CallcenterFile < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
            originalHash = row.to_hash
            convertedHash = Hash.new
            map_hash.each{|k,v|
                convertedHash[k] = originalHash[v]
            }
            convertedHash['check'] = "未確認"
            convertedHash['marketing'] = "false"
            # convertedHash['file_name'] = filename
            obj = new
            obj.attributes = convertedHash
            # obj.attributes = row.to_hash.slice(*updatable_attributes)
            obj.save!
            
            #顧客データがなければ新規追加
            if Customer.where(name: convertedHash[:raiinshamei_kanji], name_kana: convertedHash[:raiinshamei_kana], 
                sex: convertedHash[:raiinsha_seibetsu], zip_code: convertedHash[:raiinsya_yubinbangou], address: convertedHash[:raiinsha_jusyo],
                tel: convertedHash[:raiinsha_denwa]).empty? then
                
                customer = Customer.create(name: convertedHash[:raiinshamei_kanji], name_kana: convertedHash[:raiinshamei_kana], 
                sex: convertedHash[:raiinsha_seibetsu], zip_code: convertedHash[:raiinsya_yubinbangou], address: convertedHash[:raiinsha_jusyo],
                tel: convertedHash[:raiinsha_denwa], marketing: "false")
            else
                customer = Customer.find_by(name: convertedHash[:raiinshamei_kanji], name_kana: convertedHash[:raiinshamei_kana], 
                sex: convertedHash[:raiinsha_seibetsu], zip_code: convertedHash[:raiinsya_yubinbangou], address: convertedHash[:raiinsha_jusyo],
                tel: convertedHash[:raiinsha_denwa])
            end
            
            #コールデータ蓄積
            CustomerCall.create(customer_id: customer.id, uketsuke_id: convertedHash[:uketsuke_id], nyudenbi: convertedHash[:nyudenbi], 
            nyuden_jikoku: convertedHash[:nyuden_jikoku], shosai: convertedHash[:tokki_jikou])
            
            #希望医院が書いてあってその希望医院が存在するなら
            if Clinic.where(abb_name: convertedHash[:kibou_iin]).exists? then
                clinic = Clinic.find_by(abb_name: convertedHash[:kibou_iin])
                #通院IDが発行されていないなら
                if CustomerVisit.where(customer_id: customer.id, clinic_id: clinic.id).empty? then
                    customer_visit = CustomerVisit.create(customer_id: customer.id, clinic_id: clinic.id)
                else
                    customer_visit = CustomerVisit.where(customer_id: customer.id, clinic_id: clinic.id)
                end
                if convertedHash[:shoshin_yoyakubi] != "" then
                    CustomerVisitRecord.create(customer_visit_id: customer_visit.id, shinryobi: convertedHash[:shoshin_yoyakubi], shinryo_jikoku: convertedHash[:shoshin_yoyakujikoku])
                else
                end
            else
            end
        end
    end

    def self.updatable_attributes
        ["uketsuke_id","uketsuke_kubun","yoyaku_kubun","nyudenbi",
        "nyuden_jikoku","uketsuke_sha","kibou_iin","baitaimei",
        "baitai_shousai","shoshin_yoyakubi","shoshin_yoyakujikoku",
        "raiinshamei_kana","raiinshamei_kanji","raiinsha_seibetsu",
        "raiinsya_yubinbangou","raiinsha_jusyo","raiinsha_denwa","tokki_jikou",
        "call_kekka"]
    end
    def self.map_hash
        {:uketsuke_id => "受付ID",:uketsuke_kubun => "受付区分",:yoyaku_kubun => "予約区分",:nyudenbi => "入電日",
        :nyuden_jikoku => "入電時間",:uketsuke_sha => "受付者",:kibou_iin => "希望医院",:baitaimei => "媒体名",
        :baitai_shousai => "媒体詳細",:shoshin_yoyakubi => "初診予約日",:shoshin_yoyakujikoku => "初診予約時刻",
        :raiinshamei_kana => "来院者名(カナ)",:raiinshamei_kanji => "来院者名(漢字)",:raiinsha_seibetsu => "来院者性別",
        :raiinsya_yubinbangou => "来院者郵便番号",:raiinsha_jusyo => "来院者住所",:raiinsha_denwa => "来院者電話番号",:tokki_jikou => "特記事項",
        :call_kekka => "コール結果"}
    end
end
