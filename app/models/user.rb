class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def full_name
    first_name.capitalize + " " + last_name.capitalize
  end

  def initials
    first_name.first.capitalize + last_name.first.capitalize
  end
end
