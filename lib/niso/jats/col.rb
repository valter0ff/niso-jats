# frozen_string_literal: true

require "lutaml/model"

module Niso
  module Jats
    class Col < Lutaml::Model::Serializable
      attribute :align, :string
      attribute :char, :string
      attribute :charoff, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :span, :string, default: -> { "1" }
      attribute :style, :string
      attribute :valign, :string
      attribute :width, :string

      xml do
        root "col"

        map_attribute "align", to: :align
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "span", to: :span
        map_attribute "style", to: :style
        map_attribute "valign", to: :valign
        map_attribute "width", to: :width
      end
    end
  end
end
