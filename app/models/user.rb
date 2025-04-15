class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  after_create :send_welcome_email
  after_rollback :tarnsaction_rollback

  private

  def send_welcome_email
    UserMailer.welcome_email(self).deliver_now
  end

  def tarnsaction_rollback
    UserMailer.failed_error(self).deliver_now
  end
end
