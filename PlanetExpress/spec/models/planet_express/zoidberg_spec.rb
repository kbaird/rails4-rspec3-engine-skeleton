require 'rails_helper'

module PlanetExpress
  RSpec.describe Zoidberg, type: :model do
    it { is_expected.to have_field(:name).of_type(String) }
  end
end
