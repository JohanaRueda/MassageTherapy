class User < ApplicationRecord
    before_save { self.email = email.downcase }
    validates :name, presence: true, length: { maximum: 50 }
    VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255}, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false}

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
    
    VALID_PHONE_REGEX= /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
    validates :phone, presence: true, length: { minimum: 10 }, format: { with: VALID_PHONE_REGEX }
    
    validates :address, presence: true
    validates :admin, presence: true
    validates :license, length: { minimum: 8 }
end
