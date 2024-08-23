# frozen_string_literal: true

require "lutaml/model"

require_relative "abstract"
require_relative "alt_text"
require_relative "alternatives"
require_relative "array"
require_relative "bold"
require_relative "break"
require_relative "caption"
require_relative "chem_struct"
require_relative "code"
require_relative "email"
require_relative "ext_link"
require_relative "fixed_case"
require_relative "graphic"
require_relative "inline_formula"
require_relative "inline_graphic"
require_relative "inline_media"
require_relative "italic"
require_relative "kwd_group"
require_relative "label"
require_relative "long_desc"
require_relative "media"
require_relative "monospace"
require_relative "named_content"
require_relative "object_id"
require_relative "overline"
require_relative "preformat"
require_relative "private_char"
require_relative "roman"
require_relative "ruby"
require_relative "sans_serif"
require_relative "sc"
require_relative "strike"
require_relative "styled_content"
require_relative "sub"
require_relative "subj_group"
require_relative "sup"
require_relative "tex_math"
require_relative "underline"
require_relative "uri"

module Niso
  module Jats
    class DispFormula < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
      attribute :alt_text, AltText, collection: true
      attribute :long_desc, LongDesc, collection: true
      attribute :abstract, Abstract, collection: true
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :break, Break, collection: true
      attribute :caption, Caption, collection: true
      attribute :bold, Bold, collection: true
      attribute :fixed_case, FixedCase, collection: true
      attribute :italic, Italic, collection: true
      attribute :monospace, Monospace, collection: true
      attribute :overline, Overline, collection: true
      attribute :roman, Roman, collection: true
      attribute :sans_serif, SansSerif, collection: true
      attribute :sc, Sc, collection: true
      attribute :strike, Strike, collection: true
      attribute :underline, Underline, collection: true
      attribute :ruby, Ruby, collection: true
      attribute :object_id, ObjectId, collection: true
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :chem_struct, ChemStruct, collection: true
      attribute :inline_formula, InlineFormula, collection: true
      attribute :kwd_group, KwdGroup, collection: true
      attribute :subj_group, SubjGroup, collection: true
      attribute :label, Label, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :tex_math, TexMath, collection: true
      attribute :mml_math, :string, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :array, Array, collection: true
      attribute :code, Code, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "disp-formula"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
        map_element "alt-text", to: :alt_text
        map_element "long-desc", to: :long_desc
        map_element "abstract", to: :abstract
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "break", to: :break
        map_element "caption", to: :caption
        map_element "bold", to: :bold
        map_element "fixed-case", to: :fixed_case
        map_element "italic", to: :italic
        map_element "monospace", to: :monospace
        map_element "overline", to: :overline
        map_element "roman", to: :roman
        map_element "sans-serif", to: :sans_serif
        map_element "sc", to: :sc
        map_element "strike", to: :strike
        map_element "underline", to: :underline
        map_element "ruby", to: :ruby
        map_element "object-id", to: :object_id
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "kwd-group", to: :kwd_group
        map_element "subj-group", to: :subj_group
        map_element "label", to: :label
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "alternatives", to: :alternatives
        map_element "array", to: :array
        map_element "code", to: :code
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
