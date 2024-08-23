# frozen_string_literal: true

require "lutaml/model"

module Niso
  module Jats
    class Rp < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string

      xml do
        root "rp"

        map_content to: :content
        map_attribute "id", to: :id
      end
    end
  end
end
