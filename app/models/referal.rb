class Referal < ApplicationRecord
  validates :name, :presence => true
  validates :reference, :presence => true
  validates :institution, :presence => true
end
