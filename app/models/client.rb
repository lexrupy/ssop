class Client < ActiveRecord::Base
  belongs_to :user
  after_initialize :generate_token

  def self.authenticate(app_id, app_secret)
    where(["app_id = ? AND app_secret = ?", app_id, app_secret]).first
  end

  def generate_token
    self.app_id = Devise.friendly_token
    self.app_secret = [Devise.friendly_token, Devise.friendly_token].join
  end

end
