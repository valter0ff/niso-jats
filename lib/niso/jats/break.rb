# frozen_string_literal: true

require "lutaml/model"

module Niso
  module Jats
    class Break < Lutaml::Model::Serializable
      attribute :id, :string

      xml do
        root "break"

        map_attribute "id", to: :id
      end
    end
  end
end
