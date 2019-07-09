# frozen_string_literal: true

module Metabase
  module Endpoint
    module Collection
      # Fetch all collections.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollection
      def collections(**params)
        get('/api/collection', params)
      end

      # Fetch a graph of all collection permissions.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apicollectiongraph
      def graph(**params)
        get('/api/collection/graph', params)
      end

      # Create a collection
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apicollection
      def create_collection(**params)
        post('/api/collection', params)
      end

      # Update collection permissions.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#put-apicollectiongraph
      def update_graph(**params)
        put('/api/collection/graph', params)
      end

    end
  end
end
