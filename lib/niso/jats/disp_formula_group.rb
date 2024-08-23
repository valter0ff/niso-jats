# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract"
require_relative "alt_text"
require_relative "caption"
require_relative "disp_formula"
require_relative "email"
require_relative "ext_link"
require_relative "kwd_group"
require_relative "label"
require_relative "long_desc"
require_relative "object_id"
require_relative "subj_group"
require_relative "uri"

module Niso
  module Jats
    class DispFormulaGroup < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label
      attribute :caption, Caption
      attribute :abstract, Abstract, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :subj_group, SubjGroup, collection: true
      attribute :alt_text, AltText, collection: true
      attribute :long_desc, LongDesc, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :disp_formula, DispFormula, collection: true
      attribute :disp_formula_group, DispFormulaGroup, collection: true

      xml do
        root "disp-formula-group"

        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "object-id", to: :object_id
        map_element "label", to: :label
        map_element "caption", to: :caption
        map_element "abstract", to: :abstract
        map_element "kwd-group", to: :kwd_group
        map_element "subj-group", to: :subj_group
        map_element "alt-text", to: :alt_text
        map_element "long-desc", to: :long_desc
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "disp-formula", to: :disp_formula
        map_element "disp-formula-group", to: :disp_formula_group
      end
    end
  end
end
