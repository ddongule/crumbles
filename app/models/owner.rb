class Owner < ApplicationRecord
  rolify
  include Authority::UserAbilities
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :reviews, dependent: :destroy
  has_one :bakery, dependent: :destroy

  after_create :append_default_role

  private

  def append_default_role
    add_role(:owner)
  end
end
