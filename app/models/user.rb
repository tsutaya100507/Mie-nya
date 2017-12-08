class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  # 正規表現による有効なメールアドレスを定義し、バリデーションに利用。
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
             format: { with: VALID_EMAIL_REGEX },
            # 大文字小文字を無視した一意性のバリデーション
             uniqueness: { case_sensitive: true }
end
