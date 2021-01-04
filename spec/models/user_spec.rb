require 'rails_helper'

RSpec.describe User, type: :model do
  describe "ユーザー新規登録" do
    it "nicknameが空だと登録できない" do
      user = FactoryBot.build(:user)
      user.nickname = ""
      user.valid?
      expect(user.errors.full_messages).to include("Nickname can't be blank")
    end
    it "emailが空では登録できない" do
      user = FactoryBot.build(:user)
      user.email = ""
      user.valid?
      expect(user.errors.full_messages).to include("Email can't be blank")
    end
    it "passwordが空では登録できない" do
      user = FactoryBot.build(:user)
      user.password = ""
      user.valid?
      expect(user.errors.full_messages).to include("Password can't be blank")
    end
    it "password_confirmationが空では登録できない" do
      user = FactoryBot.build(:user)
      user.password_confirmation = ""
      user.valid?
      expect(user.errors.full_messages).to include("Password_confirmation can't be blank")
    end
    it "last_nameが空では登録できない" do
      user = FactoryBot.build(:user)
      user.last_name = ""
      user.valid?
      expect(user.errors.full_messages).to include("Last_name can't be blank")
    end
    it "first_nameが空では登録できない" do
      user = FactoryBot.build(:user)
      user.first_name = ""
      user.valid?
      expect(user.errors.full_messages).to include("First_name can't be blank")
    end
    it "last_name_kanaが空では登録できない" do
      user = FactoryBot.build(:user)
      user.last_name_kana = ""
      user.valid?
      expect(user.errors.full_messages).to include("Last_name_kana can't be blank")
    end
    it "first_name_kanaが空では登録できない" do
      user = FactoryBot.build(:user)
      user.first_name_kana = ""
      user.valid?
      expect(user.errors.full_messages).to include("First_name_kana can't be blank")
    end
    it "birth_yearが空では登録できない" do
      user = FactoryBot.build(:user)
      user.birth_year = ""
      user.valid?
      expect(user.errors.full_messages).to include("Birth_year can't be blank")
    end
    it "birth_monthが空では登録できない" do
      user = FactoryBot.build(:user)
      user.birth_month = ""
      user.valid?
      expect(user.errors.full_messages).to include("Birth_month can't be blank")
    end
    it "birth_dateが空では登録できない" do
      user = FactoryBot.build(:user)
      user.birth_date = ""
      user.valid?
      expect(user.errors.full_messages).to include("Birth_date can't be blank")
    end
    it "passwordは6文字以上で登録できる" do
      user = FactoryBot.build(:user)
      user.password = "000000"
      user.password_confirmation = "000000"
      user.valid?
      expect(user).to be_valid
    end
    it "passwordは6文字以下だと登録できない" do
      user = FactoryBot.build(:user)
      user.password = "000000"
      user.password_confirmation = "000000"
      user.valid?
      expect(user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end
  end
end
