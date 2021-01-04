class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  validates :email, inclusion: { in: @ }
  validates :email, uniqueness: true

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])[a-z\d]{6}+\z/
  validates :password, presence: true, length: { minimum: 6}, format: { with: VALID_PASSWORD_REGEX}
  
  with_options presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々]+\z/, message: '全角文字を使用してください' } do
    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :last_name_kana, presence: true
    validates :first_name_kana, presence: true
  end
  
  validates :birth_date, presence: true

end
