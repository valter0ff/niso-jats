# frozen_string_literal: true

require "lutaml/model"

require_relative "abbrev"
require_relative "alternatives"
require_relative "answer"
require_relative "answer_set"
require_relative "array"
require_relative "bold"
require_relative "break"
require_relative "chem_struct"
require_relative "citation_alternatives"
require_relative "code"
require_relative "def_list"
require_relative "disp_formula"
require_relative "disp_formula_group"
require_relative "disp_quote"
require_relative "element_citation"
require_relative "email"
require_relative "explanation"
require_relative "ext_link"
require_relative "fixed_case"
require_relative "fn"
require_relative "graphic"
require_relative "hr"
require_relative "index_term"
require_relative "index_term_range_end"
require_relative "inline_formula"
require_relative "inline_graphic"
require_relative "inline_media"
require_relative "inline_supplementary_material"
require_relative "italic"
require_relative "list"
require_relative "media"
require_relative "milestone_end"
require_relative "milestone_start"
require_relative "mixed_citation"
require_relative "monospace"
require_relative "named_content"
require_relative "nlm_citation"
require_relative "overline"
require_relative "paragraph"
require_relative "preformat"
require_relative "private_char"
require_relative "question"
require_relative "question_wrap"
require_relative "question_wrap_group"
require_relative "related_article"
require_relative "related_object"
require_relative "roman"
require_relative "ruby"
require_relative "sans_serif"
require_relative "sc"
require_relative "speech"
require_relative "statement"
require_relative "strike"
require_relative "styled_content"
require_relative "sub"
require_relative "sup"
require_relative "target"
require_relative "tex_math"
require_relative "underline"
require_relative "uri"
require_relative "verse_group"
require_relative "xref"

module Niso
  module Jats
    class Td < Lutaml::Model::Serializable
      attribute :content, :string
      attribute :abbr, :string
      attribute :align, :string
      attribute :axis, :string
      attribute :char, :string
      attribute :charoff, :string
      attribute :colspan, :string, default: -> { "1" }
      attribute :content_type, :string
      attribute :headers, :string
      attribute :id, :string
      attribute :rowspan, :string, default: -> { "1" }
      attribute :scope, :string
      attribute :style, :string
      attribute :valign, :string
      attribute :email, Email, collection: true
      attribute :ext_link, ExtLink, collection: true
      attribute :uri, Uri, collection: true
      attribute :hr, Hr, collection: true
      attribute :inline_supplementary_material, InlineSupplementaryMaterial, collection: true
      attribute :related_article, RelatedArticle, collection: true
      attribute :related_object, RelatedObject, collection: true
      attribute :disp_formula, DispFormula, collection: true
      attribute :disp_formula_group, DispFormulaGroup, collection: true
      attribute :break, Break, collection: true
      attribute :citation_alternatives, CitationAlternatives, collection: true
      attribute :element_citation, ElementCitation, collection: true
      attribute :mixed_citation, MixedCitation, collection: true
      attribute :nlm_citation, NlmCitation, collection: true
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
      attribute :inline_graphic, InlineGraphic, collection: true
      attribute :inline_media, InlineMedia, collection: true
      attribute :private_char, PrivateChar, collection: true
      attribute :chem_struct, ChemStruct, collection: true
      attribute :inline_formula, InlineFormula, collection: true
      attribute :disp_quote, DispQuote, collection: true
      attribute :speech, Speech, collection: true
      attribute :statement, Statement, collection: true
      attribute :verse_group, VerseGroup, collection: true
      attribute :def_list, DefList, collection: true
      attribute :list, List, collection: true
      attribute :tex_math, TexMath, collection: true
      attribute :mml_math, :string, collection: true
      attribute :p, Paragraph, collection: true
      attribute :abbrev, Abbrev, collection: true
      attribute :index_term, IndexTerm, collection: true
      attribute :index_term_range_end, IndexTermRangeEnd, collection: true
      attribute :milestone_end, MilestoneEnd, collection: true
      attribute :milestone_start, MilestoneStart, collection: true
      attribute :named_content, NamedContent, collection: true
      attribute :styled_content, StyledContent, collection: true
      attribute :alternatives, Alternatives, collection: true
      attribute :array, Array, collection: true
      attribute :code, Code, collection: true
      attribute :graphic, Graphic, collection: true
      attribute :media, Media, collection: true
      attribute :preformat, Preformat, collection: true
      attribute :answer, Answer, collection: true
      attribute :answer_set, AnswerSet, collection: true
      attribute :explanation, Explanation, collection: true
      attribute :question, Question, collection: true
      attribute :question_wrap, QuestionWrap, collection: true
      attribute :question_wrap_group, QuestionWrapGroup, collection: true
      attribute :fn, Fn, collection: true
      attribute :target, Target, collection: true
      attribute :xref, Xref, collection: true
      attribute :sub, Sub, collection: true
      attribute :sup, Sup, collection: true

      xml do
        root "td"

        map_content to: :content
        map_attribute "abbr", to: :abbr
        map_attribute "align", to: :align
        map_attribute "axis", to: :axis
        map_attribute "char", to: :char
        map_attribute "charoff", to: :charoff
        map_attribute "colspan", to: :colspan
        map_attribute "content-type", to: :content_type
        map_attribute "headers", to: :headers
        map_attribute "id", to: :id
        map_attribute "rowspan", to: :rowspan
        map_attribute "scope", to: :scope
        map_attribute "style", to: :style
        map_attribute "valign", to: :valign
        map_element "email", to: :email
        map_element "ext-link", to: :ext_link
        map_element "uri", to: :uri
        map_element "hr", to: :hr
        map_element "inline-supplementary-material", to: :inline_supplementary_material
        map_element "related-article", to: :related_article
        map_element "related-object", to: :related_object
        map_element "disp-formula", to: :disp_formula
        map_element "disp-formula-group", to: :disp_formula_group
        map_element "break", to: :break
        map_element "citation-alternatives", to: :citation_alternatives
        map_element "element-citation", to: :element_citation
        map_element "mixed-citation", to: :mixed_citation
        map_element "nlm-citation", to: :nlm_citation
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
        map_element "inline-graphic", to: :inline_graphic
        map_element "inline-media", to: :inline_media
        map_element "private-char", to: :private_char
        map_element "chem-struct", to: :chem_struct
        map_element "inline-formula", to: :inline_formula
        map_element "disp-quote", to: :disp_quote
        map_element "speech", to: :speech
        map_element "statement", to: :statement
        map_element "verse-group", to: :verse_group
        map_element "def-list", to: :def_list
        map_element "list", to: :list
        map_element "tex-math", to: :tex_math
        map_element "mml-math", to: :mml_math
        map_element "p", to: :p
        map_element "abbrev", to: :abbrev
        map_element "index-term", to: :index_term
        map_element "index-term-range-end", to: :index_term_range_end
        map_element "milestone-end", to: :milestone_end
        map_element "milestone-start", to: :milestone_start
        map_element "named-content", to: :named_content
        map_element "styled-content", to: :styled_content
        map_element "alternatives", to: :alternatives
        map_element "array", to: :array
        map_element "code", to: :code
        map_element "graphic", to: :graphic
        map_element "media", to: :media
        map_element "preformat", to: :preformat
        map_element "answer", to: :answer
        map_element "answer-set", to: :answer_set
        map_element "explanation", to: :explanation
        map_element "question", to: :question
        map_element "question-wrap", to: :question_wrap
        map_element "question-wrap-group", to: :question_wrap_group
        map_element "fn", to: :fn
        map_element "target", to: :target
        map_element "xref", to: :xref
        map_element "sub", to: :sub
        map_element "sup", to: :sup
      end
    end
  end
end
