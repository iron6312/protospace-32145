class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  has_many :comments
  has_many :prototypes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
