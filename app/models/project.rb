class Project < ActiveRecord::Base
    validates :title, :presence => true
    validates :technology, :presence => true
    validates :link, :presence => true
    validates :description, :presence => true
    validates :image, :presence => true
end
