class Skill < ActiveRecord::Base
    validates :skill, :presence => true
    validates :mastery, :presence => true
end
