module PlanetExpress
  class Zoidberg
    include ::Mongoid::Document
    include ::Mongoid::Timestamps
    field :name, type: String
  end
end
