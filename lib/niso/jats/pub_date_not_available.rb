# frozen_string_literal: true

require "lutaml/model"

module Niso
  module Jats
    class PubDateNotAvailable < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :specific_use, :string

      xml do
        root "pub-date-not-available"

        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
      end
    end
  end
end
