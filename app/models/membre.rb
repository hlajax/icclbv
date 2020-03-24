class Membre < ApplicationRecord
  has_merit

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  has_many :photos
  has_many :creneaus
  validates :star_id, presence: false
  def email_required?
    false
  end
end
