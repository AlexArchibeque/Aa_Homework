class User < ApplicationRecord
    validates :username, :session_token, presence: true, uniqueness: true
    validates :password_digest, prsence: { message: "Password can\'t be blank"}
    validates :password, length: { minimum: 6, allow_nil: true }

    before_validation :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(username,password)
        user = User.find_by(username: username)

        return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
        nil
    end
end
