# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  username               :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#

class User < ApplicationRecord
  validates :username, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :movies
  has_many :reviews, dependent: :destroy
  def user_params
    params.require(:user).permit(:id, :email, :username, :search)
  end

  def self.search(search)
    if search
      self.where("lower(username) like lower(?) OR lower(email) like lower(?)", "%#{search}%", "%#{search}%")
    else
      User.all
    end
  end
end
