class Administrator
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :password, type: String

  validates :name, presence: true, uniqueness: true

  def authenticate(the_pwd)
    password == the_pwd
  end

  def password_digest
    Digest::MD5.hexdigest(password)
  end

end
