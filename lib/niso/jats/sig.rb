# frozen_string_literal: true

require "lutaml/model"

require_relative "bold"
require_relative "break"
require_relative "fixed_case"
require_relative "graphic"
require_relative "inline_graphic"
require_relative "inline_media"
require_relative "italic"
require_relative "media"
require_relative "monospace"
require_relative "named_content"
require_relative "overline"
require_relative "private_char"
require_relative "roman"
require_relative "ruby"
require_relative "sans_serif"
require_relative "sc"
require_relative "strike"
require_relative "styled_content"
require_relative "sub"
require_relative "sup"
require_relative "underline"

module Niso
  module Jats
    class Sig < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :rid, :string
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
      attribute :break, Break, collection: true
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true

      xml do
        root "sig"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "rid", to: :rid
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
        map_element "break", to: :break
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "graphic", to: :graphic
        map_element "media", to: :media
      end
    end
  end
end
