require_relative "abbrev"
require_relative "alternatives"
require_relative "bold"
require_relative "chem_struct"
require_relative "email"
require_relative "ext_link"
require_relative "fixed_case"
require_relative "fn"
require_relative "index_term"
require_relative "index_term_range_end"
require_relative "inline_formula"
require_relative "inline_graphic"
require_relative "inline_media"
require_relative "inline_supplementary_material"
require_relative "italic"
require_relative "milestone_end"
require_relative "milestone_start"
require_relative "monospace"
require_relative "named_content"
require_relative "overline"
require_relative "private_char"
require_relative "related_article"
require_relative "related_object"
require_relative "roman"
require_relative "ruby"
require_relative "sans_serif"
require_relative "sc"
require_relative "strike"
require_relative "styled_content"
require_relative "sub"
require_relative "sup"
require_relative "target"
require_relative "tex_math"
require_relative "underline"
require_relative "uri"
require_relative "xref"

module Niso
  module Jats
    module BasicText

      def self.included
        attribute :email, Email, collection: true
        attribute :ext_link, ExtLink, collection: true
        attribute :uri, Uri, collection: true
        attribute :inline_supplementary_material, InlineSupplementaryMaterial, collection: true
        attribute :related_article, RelatedArticle, collection: true
        attribute :related_object, RelatedObject, collection: true
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
        attribute :alternatives, Alternatives, collection: true
        attribute :inline_graphic, InlineGraphic, collection: true
        attribute :inline_media, InlineMedia, collection: true
        attribute :private_char, PrivateChar, collection: true
        attribute :chem_struct, ChemStruct, collection: true
        attribute :inline_formula, InlineFormula, collection: true
        attribute :tex_math, TexMath, collection: true
        attribute :mml_math, :string, collection: true
        attribute :abbrev, Abbrev, collection: true
        attribute :index_term, IndexTerm, collection: true
        attribute :index_term_range_end, IndexTermRangeEnd, collection: true
        attribute :milestone_end, MilestoneEnd, collection: true
        attribute :milestone_start, MilestoneStart, collection: true
        attribute :named_content, NamedContent, collection: true
        attribute :styled_content, StyledContent, collection: true
        attribute :fn, Fn, collection: true
        attribute :target, Target, collection: true
        attribute :xref, Xref, collection: true
        attribute :sub, Sub, collection: true
        attribute :sup, Sup, collection: true
      end
    end
  end
end