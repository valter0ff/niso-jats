# frozen_string_literal: true

module Niso
  module Jats
    class Title < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :content_type, :string
      attribute :id, :string
      attribute :specific_use, :string
      include BasicText
      attribute :break, Break, collection: true
      attribute :citation_alternatives, CitationAlternatives, collection: true
      attribute :element_citation, ElementCitation, collection: true
      attribute :mixed_citation, MixedCitation, collection: true
      attribute :nlm_citation, NlmCitation, collection: true

      xml do
        root "title"

        map_content to: :content
        map_attribute "content-type", to: :content_type
        map_attribute "id", to: :id
        map_attribute "specific-use", to: :specific_use
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "inline-supplementary-material",
                    to: :inline_supplementary_material
        map_element "related-article", to: :related_article
        map_element "related-object", to: :related_object
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
        map_element "alternatives", to: :alternatives
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "abbrev", to: :abbrev
        map_element "index-term", to: :index_term
        map_element "index-term-range-end", to: :index_term_range_end
        map_element "milestone-end", to: :milestone_end
        map_element "milestone-start", to: :milestone_start
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "xref", to: :xref
        map_element "sub", to: :sub
        map_element "sup", to: :sup
        map_element "break", to: :break
        map_element "citation-alternatives", to: :citation_alternatives
        map_element "element-citation", to: :element_citation
        map_element "mixed-citation", to: :mixed_citation
        map_element "nlm-citation", to: :nlm_citation
      end
    end
  end
end
