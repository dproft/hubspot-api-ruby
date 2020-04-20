=begin
#Timeline events

#This feature allows an app to create and configure custom events that can show up in the timelines of certain CRM object like contacts, companies, or deals. You'll find multiple use cases for this API in the sections below.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'cgi'

module Hubspot
  module Crm
    module Timeline
      class TemplatesApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Deletes an event template for the app
        # This will delete the event template. All events associated with it will be removed from search and the timeline UI.  There is no recovery from this option, so it's highly recommended that you stop using any events for a template before deleting it.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [nil]
        def archive(event_template_id, app_id, opts = {})
          archive_with_http_info(event_template_id, app_id, opts)
          nil
        end

        # Deletes an event template for the app
        # This will delete the event template. All events associated with it will be removed from search and the timeline UI.  There is no recovery from this option, so it&#39;s highly recommended that you stop using any events for a template before deleting it.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
        def archive_with_http_info(event_template_id, app_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TemplatesApi.archive ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling TemplatesApi.archive"
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplatesApi.archive"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates/{eventTemplateId}'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: TemplatesApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Create an event template for your app
        # Event templates define the general structure for a custom timeline event. This includes formatted copy for its heading and details, as well as any custom property definitions. The event could be something like viewing a video, registering for a webinar, or filling out a survey. A single app can define multiple event templates.  Event templates will be created for contacts by default, but they can be created for companies and deals as well.   Each event template contains its own set of tokens and `Markdown` templates. These tokens can be associated with any CRM object properties via the `objectPropertyName` field to fully build out CRM objects.  You must create an event template before you can create events.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @option opts [TimelineEventTemplateCreateRequest] :timeline_event_template_create_request The new event template definition.
        # @return [TimelineEventTemplate]
        def create(app_id, opts = {})
          data, _status_code, _headers = create_with_http_info(app_id, opts)
          data
        end

        # Create an event template for your app
        # Event templates define the general structure for a custom timeline event. This includes formatted copy for its heading and details, as well as any custom property definitions. The event could be something like viewing a video, registering for a webinar, or filling out a survey. A single app can define multiple event templates.  Event templates will be created for contacts by default, but they can be created for companies and deals as well.   Each event template contains its own set of tokens and &#x60;Markdown&#x60; templates. These tokens can be associated with any CRM object properties via the &#x60;objectPropertyName&#x60; field to fully build out CRM objects.  You must create an event template before you can create events.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @option opts [TimelineEventTemplateCreateRequest] :timeline_event_template_create_request The new event template definition.
        # @return [Array<(TimelineEventTemplate, Integer, Hash)>] TimelineEventTemplate data, response status code and response headers
        def create_with_http_info(app_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TemplatesApi.create ...'
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplatesApi.create"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(opts[:'timeline_event_template_create_request']) 

          # return_type
          return_type = opts[:return_type] || 'TimelineEventTemplate' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: TemplatesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # List all event templates for your app
        # Use this to list all event templates owned by your app.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [CollectionResponseTimelineEventTemplate]
        def get_all(app_id, opts = {})
          data, _status_code, _headers = get_all_with_http_info(app_id, opts)
          data
        end

        # List all event templates for your app
        # Use this to list all event templates owned by your app.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [Array<(CollectionResponseTimelineEventTemplate, Integer, Hash)>] CollectionResponseTimelineEventTemplate data, response status code and response headers
        def get_all_with_http_info(app_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TemplatesApi.get_all ...'
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplatesApi.get_all"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'CollectionResponseTimelineEventTemplate' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

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
            @api_client.config.logger.debug "API called: TemplatesApi#get_all\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Gets a specific event template for your app
        # View the current state of a specific template and its tokens.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [TimelineEventTemplate]
        def get_by_id(event_template_id, app_id, opts = {})
          data, _status_code, _headers = get_by_id_with_http_info(event_template_id, app_id, opts)
          data
        end

        # Gets a specific event template for your app
        # View the current state of a specific template and its tokens.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @return [Array<(TimelineEventTemplate, Integer, Hash)>] TimelineEventTemplate data, response status code and response headers
        def get_by_id_with_http_info(event_template_id, app_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TemplatesApi.get_by_id ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling TemplatesApi.get_by_id"
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplatesApi.get_by_id"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates/{eventTemplateId}'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] 

          # return_type
          return_type = opts[:return_type] || 'TimelineEventTemplate' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

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
            @api_client.config.logger.debug "API called: TemplatesApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # Update an existing event template
        # Updates an existing template and its tokens. This is primarily used to update the headerTemplate/detailTemplate, and those changes will take effect for existing events.  You can also update or replace all the tokens in the template here instead of doing individual API calls on the `/tokens` endpoint.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @option opts [TimelineEventTemplateUpdateRequest] :timeline_event_template_update_request The updated event template definition.
        # @return [TimelineEventTemplate]
        def update(event_template_id, app_id, opts = {})
          data, _status_code, _headers = update_with_http_info(event_template_id, app_id, opts)
          data
        end

        # Update an existing event template
        # Updates an existing template and its tokens. This is primarily used to update the headerTemplate/detailTemplate, and those changes will take effect for existing events.  You can also update or replace all the tokens in the template here instead of doing individual API calls on the &#x60;/tokens&#x60; endpoint.
        # @param event_template_id [String] The event template ID.
        # @param app_id [Integer] The ID of the target app.
        # @param [Hash] opts the optional parameters
        # @option opts [TimelineEventTemplateUpdateRequest] :timeline_event_template_update_request The updated event template definition.
        # @return [Array<(TimelineEventTemplate, Integer, Hash)>] TimelineEventTemplate data, response status code and response headers
        def update_with_http_info(event_template_id, app_id, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: TemplatesApi.update ...'
          end
          # verify the required parameter 'event_template_id' is set
          if @api_client.config.client_side_validation && event_template_id.nil?
            fail ArgumentError, "Missing the required parameter 'event_template_id' when calling TemplatesApi.update"
          end
          # verify the required parameter 'app_id' is set
          if @api_client.config.client_side_validation && app_id.nil?
            fail ArgumentError, "Missing the required parameter 'app_id' when calling TemplatesApi.update"
          end
          # resource path
          local_var_path = '/crm/v3/timeline/{appId}/event-templates/{eventTemplateId}'.sub('{' + 'eventTemplateId' + '}', CGI.escape(event_template_id.to_s)).sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

          # query parameters
          query_params = opts[:query_params] || {}

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
          # HTTP header 'Content-Type'
          header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:body] || @api_client.object_to_http_body(opts[:'timeline_event_template_update_request']) 

          # return_type
          return_type = opts[:return_type] || 'TimelineEventTemplate' 

          # auth_names
          auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: TemplatesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end