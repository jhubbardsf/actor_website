class User < ActiveRecord::Base
  attr_accessor :password
  attr_accessible :biography, :password, :name, :username

  validates :name,
            :presence => true,
            :length   => { :maximum => 50 }

  validates :biography,
            :presence => true

  validates :password,
            :presence     => true,
            :confirmation => true,
            :length       => { :within => 6..40 },
            :on => :create

  has_many :admin_photos, :class_name => 'Admin::Photo'

  before_save :encrypt_password, :unless => Proc.new { |x| x.password.nil? }

  # Return true if the user's password matches the submitted password.
  def has_password?(submitted_password)
    encrypted_password == encrypt(submitted_password)
  end


  def self.authenticate(username, submitted_password)
    user = find_by_username(username)
    user && user.has_password?(submitted_password) ? user: nil
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end

  private

  def encrypt_password
    self.salt = make_salt if new_record?
    self.encrypted_password = encrypt(password)
  end

  def encrypt(string)
    secure_hash("#{salt}--#{string}")
  end

  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
end
