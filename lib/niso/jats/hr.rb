# frozen_string_literal: true

require "lutaml/model"

module Niso
  module Jats
    class Hr < Lutaml::Model::Serializable
      attribute :id, :string

      xml do
        root "hr"

        map_attribute "id", to: :id
      end
    end
  end
end
