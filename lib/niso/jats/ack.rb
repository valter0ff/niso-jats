# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract"
require_relative "kwd_group"
require_relative "label"
require_relative "object_id"
require_relative "paragraph"
require_relative "ref_list"
require_relative "sec"
require_relative "subj_group"
require_relative "title"

module Niso
  module Jats
    class Ack < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label
      attribute :title, Title
      attribute :abstract, Abstract, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :subj_group, SubjGroup, collection: true
      attribute :p, Paragraph, collection: true
      attribute :sec, Sec, collection: true
      attribute :ref_list, RefList, collection: true

      xml do
        root "ack"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "title", to: :title
        map_element "abstract", to: :abstract
        map_element "kwd-group", to: :kwd_group
        map_element "subj-group", to: :subj_group
        map_element "p", to: :p
        map_element "sec", to: :sec
        map_element "ref-list", to: :ref_list
      end
    end
  end
end
