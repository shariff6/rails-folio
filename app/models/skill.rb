class Skill < ActiveRecord::Base
    belongs_to :admin
    validates :admin_id :presence => true
    validates :skill :presence => true
    validates :mastery :presence => true
end
