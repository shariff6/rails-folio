class Admin < ActiveRecord::Base
   has_many :projects
   has_many :skills
    validates :name, :presence => true
    validates :title, :presence => true
end
