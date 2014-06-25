require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ZoidbergsHelper. For example:
#
# describe ZoidbergsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
module PlanetExpress
  RSpec.describe ZoidbergsHelper, type: :helper do
    it { expect(subject).to be ZoidbergsHelper }
  end
end
