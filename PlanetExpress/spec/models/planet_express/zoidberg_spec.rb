require 'rails_helper'

module PlanetExpress
  RSpec.describe Zoidberg, type: :model do
    it { is_expected.to respond_to :name }
  end
end
