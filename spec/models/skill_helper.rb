require 'rails_helper'

describe Skill do
  it { should validate_presence_of :skill}
  it { should validate_length_of :mastery}
end
