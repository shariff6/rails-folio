class Project < ActiveRecord::Base
    validates :title, :presence => true
    validates :technology, :presence => true
    validates :link, :presence => true
end
