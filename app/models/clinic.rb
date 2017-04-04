class Clinic < ActiveRecord::Base
    #空じゃない
    validates :abb_name,:name,:hosho_name,:hd_name,:zip_code,:address,:tel,:fax, presence: true
    #一意
    validates :abb_name,:name,:hosho_name,:address,:tel,:fax, uniqueness: true
    #郵便番号の形式
    validates :zip_code, format: { with: /\A\d{3}\-?\d{4}\z/ }
    # email validification
    # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    # validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end
