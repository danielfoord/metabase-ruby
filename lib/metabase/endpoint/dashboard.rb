# frozen_string_literal: true

module Metabase
  module Endpoint
    module Dashboard
      # Fetch all dashboards.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apidashboard
      def dashboards(**params)
        get('/api/dashboard', params)
      end

      # Create a dashboard.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apidashboard
      def create_dashboard(**params)
        post('/api/dashboard', params)
      end

      # Update a dashboard.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#put-apidashboardid
      def update_dashboard(dashboard_id, **params)
        put("/api/dashboard/#{dashboard_id}", params)
      end
    end
  end
end
