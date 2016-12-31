require 'forwardable'

module Middleman
  module Pagination
    class ExtensionContext
      extend Forwardable

      def_delegators :app, :sitemap, :config, :data

      def initialize(extension)
        @extension = extension
      end

      def configuration
        @configuration ||= Configuration.new
      end

      def app
        @extension.app
      end
    end
  end
end
