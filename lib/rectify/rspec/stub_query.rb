module Rectify
  module RSpec
    class StubQuery < Query
      def initialize(results)
        super
        @results = Array(results)
      end

      def query
        @results
      end
    end
  end
end
