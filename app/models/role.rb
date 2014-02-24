class Role < ActiveRecord::Base
  attr_accessible :name
  before_create :create_role
  def create_role_user
    self.roles << Role.find_by_name(:user)
  end

  def create_role_admin
    self.roles << Role.find_by_name(:admin)
  end
  has_many :users_roles
  has_many :roles, :through => :users_roles
end
