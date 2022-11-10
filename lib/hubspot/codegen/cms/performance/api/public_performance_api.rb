=begin
#CMS Performance API

#Use these endpoints to get a time series view of your website's performance.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'cgi'

module Hubspot
  module Cms
    module Performance
      class PublicPerformanceApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # View your website's performance.
        # Returns time series data website performance data for the given domain and/or path.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :domain The domain to search return data for.
        # @option opts [String] :path The url path of the domain to return data for.
        # @option opts [Boolean] :pad Specifies whether the time series data should have empty intervals if performance data is not present to create a continuous set.
        # @option opts [Boolean] :sum Specifies whether the time series data should be summated for the given period. Defaults to false.
        # @option opts [String] :period A relative period to return time series data for. This value is ignored if start and/or end are provided. Valid periods: [15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [String] :interval The time series interval to group data by. Valid intervals: [1m, 5m, 15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [Integer] :start A timestamp in milliseconds that indicates the start of the time period.
        # @option opts [Integer] :_end A timestamp in milliseconds that indicates the end of the time period.
        # @return [PublicPerformanceResponse]
        def get_page(opts = {})
          data, _status_code, _headers = get_page_with_http_info(opts)
          data
        end

        # View your website&#39;s performance.
        # Returns time series data website performance data for the given domain and/or path.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :domain The domain to search return data for.
        # @option opts [String] :path The url path of the domain to return data for.
        # @option opts [Boolean] :pad Specifies whether the time series data should have empty intervals if performance data is not present to create a continuous set.
        # @option opts [Boolean] :sum Specifies whether the time series data should be summated for the given period. Defaults to false.
        # @option opts [String] :period A relative period to return time series data for. This value is ignored if start and/or end are provided. Valid periods: [15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [String] :interval The time series interval to group data by. Valid intervals: [1m, 5m, 15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [Integer] :start A timestamp in milliseconds that indicates the start of the time period.
        # @option opts [Integer] :_end A timestamp in milliseconds that indicates the end of the time period.
        # @return [Array<(PublicPerformanceResponse, Integer, Hash)>] PublicPerformanceResponse data, response status code and response headers
        def get_page_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: PublicPerformanceApi.get_page ...'
          end
          # resource path
          local_var_path = '/cms/v3/performance/'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'domain'] = opts[:'domain'] if !opts[:'domain'].nil?
          query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
          query_params[:'pad'] = opts[:'pad'] if !opts[:'pad'].nil?
          query_params[:'sum'] = opts[:'sum'] if !opts[:'sum'].nil?
          query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
          query_params[:'interval'] = opts[:'interval'] if !opts[:'interval'].nil?
          query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
          query_params[:'end'] = opts[:'_end'] if !opts[:'_end'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'PublicPerformanceResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"PublicPerformanceApi.get_page",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: PublicPerformanceApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end

        # View your website's uptime.
        # Returns uptime time series website performance data for the given domain.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :domain The domain to search return data for.
        # @option opts [String] :path 
        # @option opts [Boolean] :pad Specifies whether the time series data should have empty intervals if performance data is not present to create a continuous set.
        # @option opts [Boolean] :sum Specifies whether the time series data should be summated for the given period. Defaults to false.
        # @option opts [String] :period A relative period to return time series data for. This value is ignored if start and/or end are provided. Valid periods: [15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [String] :interval The time series interval to group data by. Valid intervals: [1m, 5m, 15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [Integer] :start A timestamp in milliseconds that indicates the start of the time period.
        # @option opts [Integer] :_end A timestamp in milliseconds that indicates the end of the time period.
        # @return [PublicPerformanceResponse]
        def get_uptime(opts = {})
          data, _status_code, _headers = get_uptime_with_http_info(opts)
          data
        end

        # View your website&#39;s uptime.
        # Returns uptime time series website performance data for the given domain.
        # @param [Hash] opts the optional parameters
        # @option opts [String] :domain The domain to search return data for.
        # @option opts [String] :path 
        # @option opts [Boolean] :pad Specifies whether the time series data should have empty intervals if performance data is not present to create a continuous set.
        # @option opts [Boolean] :sum Specifies whether the time series data should be summated for the given period. Defaults to false.
        # @option opts [String] :period A relative period to return time series data for. This value is ignored if start and/or end are provided. Valid periods: [15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [String] :interval The time series interval to group data by. Valid intervals: [1m, 5m, 15m, 30m, 1h, 4h, 12h, 1d, 1w]
        # @option opts [Integer] :start A timestamp in milliseconds that indicates the start of the time period.
        # @option opts [Integer] :_end A timestamp in milliseconds that indicates the end of the time period.
        # @return [Array<(PublicPerformanceResponse, Integer, Hash)>] PublicPerformanceResponse data, response status code and response headers
        def get_uptime_with_http_info(opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: PublicPerformanceApi.get_uptime ...'
          end
          # resource path
          local_var_path = '/cms/v3/performance/uptime'

          # query parameters
          query_params = opts[:query_params] || {}
          query_params[:'domain'] = opts[:'domain'] if !opts[:'domain'].nil?
          query_params[:'path'] = opts[:'path'] if !opts[:'path'].nil?
          query_params[:'pad'] = opts[:'pad'] if !opts[:'pad'].nil?
          query_params[:'sum'] = opts[:'sum'] if !opts[:'sum'].nil?
          query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
          query_params[:'interval'] = opts[:'interval'] if !opts[:'interval'].nil?
          query_params[:'start'] = opts[:'start'] if !opts[:'start'].nil?
          query_params[:'end'] = opts[:'_end'] if !opts[:'_end'].nil?

          # header parameters
          header_params = opts[:header_params] || {}
          # HTTP header 'Accept' (if needed)
          header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

          # form parameters
          form_params = opts[:form_params] || {}

          # http body (model)
          post_body = opts[:debug_body]

          # return_type
          return_type = opts[:debug_return_type] || 'PublicPerformanceResponse'

          # auth_names
          auth_names = opts[:debug_auth_names] || ['hapikey', 'oauth2']

          new_options = opts.merge(
            :operation => :"PublicPerformanceApi.get_uptime",
            :header_params => header_params,
            :query_params => query_params,
            :form_params => form_params,
            :body => post_body,
            :auth_names => auth_names,
            :return_type => return_type
          )

          data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
          if @api_client.config.debugging
            @api_client.config.logger.debug "API called: PublicPerformanceApi#get_uptime\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
