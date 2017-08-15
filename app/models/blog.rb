class Blog < ApplicationRecord
  validates :title, :presence => true
  validates :blog, :presence => true
  has_many :comments
end
