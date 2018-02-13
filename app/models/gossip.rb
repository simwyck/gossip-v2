class Gossip < ApplicationRecord
  belongs_to :admin

  before_save { self.anonymous_author = anonymous_author.titleize }
  validates :anonymous_author, presence: true, length: { minimum: 2, maximum: 100 }
  validates :content, presence: true, length: { minimum: 2, maximum: 300 }
end
