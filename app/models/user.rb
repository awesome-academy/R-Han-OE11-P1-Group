class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable,
    :omniauthable, omniauth_providers: [:google_oauth2]

  class << self
    def from_omniauth auth
      user = User.find_by(uid: auth.info["email"])
      return nil if user.present?
      User.create refresh_token: auth.credentials.refresh_token,
        token: auth.credentials.token,
        expires_at: Time.at(auth.credentials.expires_at),
        uid: auth.uid,
        email: auth.info.email,
        user_id: user.id,
        google_app_id: google_app_id,
        channel_id: channel_id
    end
  end
end
