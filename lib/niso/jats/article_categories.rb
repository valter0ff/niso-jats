# frozen_string_literal: true

require "lutaml/model"

require_relative "series_text"
require_relative "series_title"
require_relative "subj_group"

module Niso
  module Jats
    class ArticleCategories < Lutaml::Model::Serializable
      attribute :id, :string
      attribute :subj_group, SubjGroup, collection: true
      attribute :series_title, SeriesTitle, collection: true
      attribute :series_text, SeriesText, collection: true

      xml do
        root "article-categories"

        map_attribute "id", to: :id
        map_element "subj-group", to: :subj_group
        map_element "series-title", to: :series_title
        map_element "series-text", to: :series_text
      end
    end
  end
end
