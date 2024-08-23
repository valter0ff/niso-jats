# frozen_string_literal: true

require "lutaml/model"

Lutaml::Model::Config.configure do |config|
  require "lutaml/model/xml_adapter/nokogiri_adapter"
  config.xml_adapter = Lutaml::Model::XmlAdapter::NokogiriAdapter
end

module Niso
  module Jats
    class Error < StandardError; end

    # Your code goes here...
  end
end

require_relative "jats/version"
