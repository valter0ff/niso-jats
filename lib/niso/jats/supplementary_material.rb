# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract"
require_relative "alt_text"
require_relative "alternatives"
require_relative "array"
require_relative "attrib"
require_relative "caption"
require_relative "chem_struct_wrap"
require_relative "code"
require_relative "def_list"
require_relative "disp_formula"
require_relative "disp_formula_group"
require_relative "disp_quote"
require_relative "email"
require_relative "ext_link"
require_relative "graphic"
require_relative "kwd_group"
require_relative "label"
require_relative "list"
require_relative "long_desc"
require_relative "media"
require_relative "object_id"
require_relative "paragraph"
require_relative "permissions"
require_relative "preformat"
require_relative "speech"
require_relative "statement"
require_relative "subj_group"
require_relative "table_wrap"
require_relative "uri"
require_relative "verse_group"
require_relative "xref"

module Niso
  module Jats
    class SupplementaryMaterial < Lutaml::Model::Serializable
      attribute :content_type, :string
      attribute :hreflang, :string
      attribute :id, :string
      attribute :mime_subtype, :string
      attribute :mimetype, :string
      attribute :orientation, :string, default: -> { "portrait" }
      attribute :position, :string, default: -> { "float" }
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :object_id, ObjectId, collection: true
      attribute :label, Label, collection: true
      attribute :caption, Caption, collection: true
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
      attribute :chem_struct_wrap, ChemStructWrap, collection: true
      attribute :disp_quote, DispQuote, collection: true
      attribute :speech, Speech, collection: true
      attribute :statement, Statement, collection: true
      attribute :verse_group, VerseGroup, collection: true
      attribute :table_wrap, TableWrap, collection: true
      attribute :p, Paragraph, collection: true
      attribute :def_list, DefList, collection: true
      attribute :list, List, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :array, Array, collection: true
      attribute :code, Code, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :xref, Xref, collection: true
      attribute :attrib, Attrib, collection: true
      attribute :permissions, Permissions, collection: true

      xml do
        root "supplementary-material"

        map_attribute "content-type", to: :content_type
        map_attribute "hreflang", to: :hreflang
        map_attribute "id", to: :id
        map_attribute "mime-subtype", to: :mime_subtype
        map_attribute "mimetype", to: :mimetype
        map_attribute "orientation", to: :orientation
        map_attribute "position", to: :position
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
        map_element "chem-struct-wrap", to: :chem_struct_wrap
        map_element "disp-quote", to: :disp_quote
        map_element "speech", to: :speech
        map_element "statement", to: :statement
        map_element "verse-group", to: :verse_group
        map_element "table-wrap", to: :table_wrap
        map_element "p", to: :p
        map_element "def-list", to: :def_list
        map_element "list", to: :list
        map_element "alternatives", to: :alternatives
        map_element "array", to: :array
        map_element "code", to: :code
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "xref", to: :xref
        map_element "attrib", to: :attrib
        map_element "permissions", to: :permissions
      end
    end
  end
end
