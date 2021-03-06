# Licensed to Elasticsearch B.V under one or more agreements.
# Elasticsearch B.V licenses this file to you under the Apache 2.0 License.
# See the LICENSE file in the project root for more information

module Elasticsearch
  module API
    module Cat
      module Actions

        # Help information for the Cat API
        #
        # @option arguments [Boolean] :help Return help information
        #
        # @see https://www.elastic.co/guide/en/elasticsearch/reference/master/cat.html
        #
        def help(arguments={})
          method = HTTP_GET
          path   = "_cat"
          params = Utils.__validate_and_extract_params arguments, ParamsRegistry.get(__method__)
          body   = nil

          perform_request(method, path, params, body).body
        end

        # Register this action with its valid params when the module is loaded.
        #
        # @since 6.1.1
        ParamsRegistry.register(:help, [
            :help,
            :s ].freeze)
      end
    end
  end
end
