# frozen_string_literal: true

module Metabase
  module Endpoint
    module Permissions
      # Fetch all permissions groups.
      #
      # @param params [Hash] Query string
      # @return [Array<Hash>] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipermissionsgroup
      def groups(**params)
        get('/api/permissions/group', params)
      end

      # Create a permission group.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apipermissionsgroup
      def create_group(**params)
        post('/api/permissions/group', params)
      end

      # Add a user to a permission group.
      #
      # @param params [Hash] Query string
      # @return [<Array>Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#post-apipermissionsmembership
      def add_user_to_group(**params)
        post('/api/permissions/membership', params)
      end

      # Fetch a permissions groups.
      #
      # @param params [Hash] Query string
      # @return [Hash] Parsed response JSON
      # @see https://github.com/metabase/metabase/blob/master/docs/api-documentation.md#get-apipermissionsgroupid
      def group(group_id:, **params)
        post("/api/permissions/group/#{group_id}", params)
      end
    end
  end
end
