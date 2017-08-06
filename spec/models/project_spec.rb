require 'rails_helper'

describe Project do
  it { should validate_presence_of :title}
  it { should validate_length_of :link }
  it { should validate_length_of :technology}
end
