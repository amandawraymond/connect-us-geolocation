class User < ActiveRecord::Base
  # before_save { self.email = email.downcase }
  # before_create :create_remember_token

  # validates :name, presence: true, length: { minimum: 2, maximum: 40 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  # validates :email, presence: true, length: { minimum: 2, maximum: 40 },
  #           format: { with: VALID_EMAIL_REGEX },
  #           uniqueness: { case_sensitive: false }
  # has_secure_password
  # validates :password, length: { minimum: 6, maximum: 20 }
  # validates :phone_number, presence: true, length: { is: 10 }
  # validates :street_address, presence: true
  # validates :state, presence: true, length: { is: 2 }
  # validates :zip_code, presence: true, length: { is: 5 }

  # def User.new_remember_token
  #   SecureRandom.urlsafe_base64
  # end

  # def User.digest(token)
  #   Digest::SHA1.hexdigest(token.to_s)
  # end

  def complete_address
    "#{street_address}, #{city}, #{state}, #{zip_code}"
  end

  geocoded_by :complete_address
  after_validation :geocode, :if => :street_address_changed? ||
                                    :city_changed? ||
                                    :state_changed? ||
                                    :zip_code_changed?
# private
#     def create_remember_token
#       self.remember_token = User.digest(User.new_remember_token)
#     end
end
