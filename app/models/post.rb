class Post < ApplicationRecord
  has_many :bookmarks, dependent: :destroy

  has_one_attached :image
  belongs_to :user

  validates :title, :body, presence: true

  def bookmarked?(user)
    bookmarks.where(user: user).exists?
  end

  def bookmark(user)
    bookmarks.create(user: user)
  end

  def unbookmark(user)
    bookmarks.where(user: user).destroy_all
  end
end
