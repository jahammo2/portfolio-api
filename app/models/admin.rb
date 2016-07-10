class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Include default devise modules.
  devise :database_authenticatable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

  include DeviseTokenAuth::Concerns::User
end
