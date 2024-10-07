class User < ApplicationRecord
    has_secure_password

    #Validations
    validates :email, presence: true, uniqueness: true
    normalizes :email, with: -> (email) {email.strip.downcase}
    validates :password, presence: true, length: {minimum: 6}

    #Associations
    has_many :notes, dependent: :destroy
    has_many :posts, dependent: :destroy
end
