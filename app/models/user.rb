class User < ApplicationRecord
<<<<<<< 058ce1442391438d58c0d256223f7a404c252fe5
  validates :name,  presence: true, uniqueness: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 },
=======
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 },
>>>>>>> ログイン機能実装
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
<<<<<<< 058ce1442391438d58c0d256223f7a404c252fe5
end
=======
end
>>>>>>> ログイン機能実装
