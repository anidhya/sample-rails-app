class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  belongs_to :role

  before_create :set_default_role

  def is?(role_name)
    role.name == role_name.to_s
  end

  private

  def set_default_role
    self.role ||= Role.find_by_name('reporter')
  end
end
