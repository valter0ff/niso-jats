# frozen_string_literal: true

module Niso
  module Jats
    class List < Lutaml::Model::Serializable
      attribute :continued_from, :string
      attribute :id, :string
      attribute :list_content, :string
      attribute :list_type, :string
      attribute :prefix_word, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label
      attribute :title, Title
      attribute :list_item, ListItem, collection: true

      xml do
        root "list"

        map_attribute "continued-from", to: :continued_from
        map_attribute "id", to: :id
        map_attribute "list-content", to: :list_content
        map_attribute "list-type", to: :list_type
        map_attribute "prefix-word", to: :prefix_word
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "list-item", to: :list_item
      end
    end
  end
end
