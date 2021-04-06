class User < ActiveRecord::Base

  has_secure_password

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  before_save :scrub_email

  def scrub_email
    self.email.downcase!
    p self
  end

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.strip.downcase)
    p user
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end

end
