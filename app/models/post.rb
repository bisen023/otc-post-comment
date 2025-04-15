class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, length: { minimum: 1 }
  validates :description_first, length: { minimum: 1 }
  validates :title, uniqueness: { user_id: :year, message: "1 user can not have same title name" }

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy

  before_save :capatilize_title

private

  def capatilize_title
   self.title = self.title.upcase
  end
end
