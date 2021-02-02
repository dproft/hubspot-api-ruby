=begin
#Feedback Submissions

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Crm
    module Objects
      module FeedbackSubmissions
        class AssociationsApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # List associations of a feedback submission by type
          # @param feedback_submission_id [String] 
          # @param to_object_type [String] 
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :paginate_associations  (default to false)
          # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
          # @option opts [Integer] :limit The maximum number of results to display per page. (default to 500)
          # @return [CollectionResponseAssociatedId]
          def get_all(feedback_submission_id, to_object_type, opts = {})
            data, _status_code, _headers = get_all_with_http_info(feedback_submission_id, to_object_type, opts)
            data
          end

          # List associations of a feedback submission by type
          # @param feedback_submission_id [String] 
          # @param to_object_type [String] 
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :paginate_associations 
          # @option opts [String] :after The paging cursor token of the last successfully read resource will be returned as the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
          # @option opts [Integer] :limit The maximum number of results to display per page.
          # @return [Array<(CollectionResponseAssociatedId, Integer, Hash)>] CollectionResponseAssociatedId data, response status code and response headers
          def get_all_with_http_info(feedback_submission_id, to_object_type, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: AssociationsApi.get_all ...'
            end
            # verify the required parameter 'feedback_submission_id' is set
            if @api_client.config.client_side_validation && feedback_submission_id.nil?
              fail ArgumentError, "Missing the required parameter 'feedback_submission_id' when calling AssociationsApi.get_all"
            end
            # verify the required parameter 'to_object_type' is set
            if @api_client.config.client_side_validation && to_object_type.nil?
              fail ArgumentError, "Missing the required parameter 'to_object_type' when calling AssociationsApi.get_all"
            end
            # resource path
            local_var_path = '/crm/v3/objects/feedback_submissions/{feedbackSubmissionId}/associations/{toObjectType}'.sub('{' + 'feedbackSubmissionId' + '}', CGI.escape(feedback_submission_id.to_s)).sub('{' + 'toObjectType' + '}', CGI.escape(to_object_type.to_s))

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'paginateAssociations'] = opts[:'paginate_associations'] if !opts[:'paginate_associations'].nil?
            query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
            query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] 

            # return_type
            return_type = opts[:return_type] || 'CollectionResponseAssociatedId' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: AssociationsApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end