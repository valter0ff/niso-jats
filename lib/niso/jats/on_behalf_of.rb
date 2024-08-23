# frozen_string_literal: true

require "lutaml/model"

require_relative "bold"
require_relative "fixed_case"
require_relative "fn"
require_relative "institution"
require_relative "institution_wrap"
require_relative "italic"
require_relative "monospace"
require_relative "named_content"
require_relative "overline"
require_relative "roman"
require_relative "ruby"
require_relative "sans_serif"
require_relative "sc"
require_relative "strike"
require_relative "styled_content"
require_relative "sub"
require_relative "sup"
require_relative "target"
require_relative "underline"
require_relative "xref"

module Niso
  module Jats
    class OnBehalfOf < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :id, :string
      attribute :specific_use, :string
      attribute :lang, :string
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
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :institution, Institution, collection: true
      attribute :institution_wrap, InstitutionWrap, collection: true
      attribute :fn, Fn, collection: true
      attribute :target, Target, collection: true
      attribute :xref, Xref, collection: true

      xml do
        root "on-behalf-of"

        map_content to: :content
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_attribute "lang", to: :lang
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
        map_element "sub", to: :sub
        map_element "sup", to: :sup
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "institution", to: :institution
        map_element "institution-wrap", to: :institution_wrap
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "xref", to: :xref
      end
    end
  end
end
