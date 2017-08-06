class Project < ActiveRecord::Base
    belongs_to :admin
    validates :title, :presence => true
    validates :admin_id, :presence => true
    validates :technology, :presence => true
    validates :link, :presence => true
end
