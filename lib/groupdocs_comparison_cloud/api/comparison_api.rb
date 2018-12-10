# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="comparison.rb">
#   Copyright (c) 2003-2018 Aspose Pty Ltd
# </copyright>
# <summary>
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this software and associated documentation files (the "Software"), to deal
#  in the Software without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Software, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#  SOFTWARE.
# </summary>
# -----------------------------------------------------------------------------------

require 'uri'
require 'date'

module GroupDocsComparisonCloud
  #
  # GroupDocs.Comparison Cloud API
  #
  class ComparisonApi
    attr_accessor :config

    #make ComparisonApi.new private 
    private_class_method :new

    # Initializes new instance of ComparisonApi
    #
    # @param [config] Configuration 
    # @return [ComparisonApi] New instance of ComparisonApi
    def initialize(config)
      @config = config
      @api_client = ApiClient.new(config)
      require_all '../models/requests'

      @access_token = nil
    end

    # Initializes new instance of ComparisonApi
    #
    # @param [app_sid] Application identifier (App SID)
    # @param [app_key] Application private key (App Key)
    # @return [ComparisonApi] New instance of ComparisonApi
    def self.from_keys(app_sid, app_key)
      config = Configuration.new(app_sid, app_key)
      return new(config)
    end

    # Initializes new instance of ComparisonApi
    #
    # @param [config] Configuration 
    # @return [ComparisonApi] New instance of ComparisonApi
    def self.from_config(config)
      return new(config)
    end

    # Returns document with the result of comparison
    # 
    # @param request comparison_request
    # @return [Link]
    def comparison(request)
      data, _status_code, _headers = comparison_with_http_info(request)
      data
    end

    # Returns document with the result of comparison
    # 
    # @param request comparison_request
    # @return [Array<(Link, Fixnum, Hash)>]
    # Link data, response status code and response headers
    def comparison_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ComparisonRequest1

      @api_client.config.logger.debug 'Calling API: ComparisonApi.comparison ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/comparison/compareDocuments'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('OutPath') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutPath') + '}', request.out_path.to_s)
      else
        query_params[downcase_first_letter('OutPath')] = request.out_path unless request.out_path.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.request)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Link')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ComparisonApi#comparison\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns images of document with the result of comparison
    # 
    # @param request comparison_images_request
    # @return [Array<Link>]
    def comparison_images(request)
      data, _status_code, _headers = comparison_images_with_http_info(request)
      data
    end

    # Returns images of document with the result of comparison
    # 
    # @param request comparison_images_request
    # @return [Array<(Array<Link>, Fixnum, Hash)>]
    # Array<Link> data, response status code and response headers
    def comparison_images_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ComparisonImagesRequest

      @api_client.config.logger.debug 'Calling API: ComparisonApi.comparison_images ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/comparison/compareDocuments/images'

      # query parameters
      query_params = {}
      if local_var_path.include? ('{' + downcase_first_letter('OutFolder') + '}')
        local_var_path = local_var_path.sub('{' + downcase_first_letter('OutFolder') + '}', request.out_folder.to_s)
      else
        query_params[downcase_first_letter('OutFolder')] = request.out_folder unless request.out_folder.nil?
      end

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.request)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Array<Link>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ComparisonApi#comparison_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns image's streams of document with the result of comparison
    # 
    # @param request comparison_images_stream_request
    # @return [File]
    def comparison_images_stream(request)
      data, _status_code, _headers = comparison_images_stream_with_http_info(request)
      data
    end

    # Returns image&#39;s streams of document with the result of comparison
    # 
    # @param request comparison_images_stream_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def comparison_images_stream_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ComparisonImagesStreamRequest

      @api_client.config.logger.debug 'Calling API: ComparisonApi.comparison_images_stream ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/comparison/compareDocuments/stream/images'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.request)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ComparisonApi#comparison_images_stream\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Returns stream of document with the result of comparison
    # 
    # @param request comparison_stream_request
    # @return [File]
    def comparison_stream(request)
      data, _status_code, _headers = comparison_stream_with_http_info(request)
      data
    end

    # Returns stream of document with the result of comparison
    # 
    # @param request comparison_stream_request
    # @return [Array<(File, Fixnum, Hash)>]
    # File data, response status code and response headers
    def comparison_stream_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ComparisonStreamRequest

      @api_client.config.logger.debug 'Calling API: ComparisonApi.comparison_stream ...' if @api_client.config.debugging
      # resource path
      local_var_path = '/comparison/compareDocuments/stream'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/xml'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.request)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        ComparisonApi#comparison_stream\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    #
    # Helper method to convert first letter to downcase
    #
    private def downcase_first_letter(str)
      value = str[0].downcase + str[1..-1]
      value
    end
                 
    #
    # Retrieves access token
    #
    private def get_access_token
        if @access_token.nil? then
          request_access_token
        else 
          access_token_expired = @access_token_expires_at < DateTime.now
          if access_token_expired then
            reset_access_token
          end
        end
        
        @access_token  
    end

    #
    # Gets a access token from server
    #
    private def request_access_token
        auth_config = Configuration.new(@config.app_sid, @config.app_key)
        auth_config.api_base_url = @config.api_base_url
        auth_config.debugging = @config.debugging
        auth_config.logger = @config.logger
        auth_config.temp_folder_path = @config.temp_folder_path
        auth_config.client_side_validation = @config.client_side_validation
        auth_config.api_version = ''

        auth_api_client = ApiClient.new(auth_config)

        request_url = "/oauth2/token"
        post_data = "grant_type=client_credentials&client_id=#{@config.app_sid}&client_secret=#{@config.app_key}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]
        @refresh_token = data[:refresh_token]

        expires_in_seconds = data[:expires_in].to_i - 5 * 60 
        expires_in_days = Rational(expires_in_seconds, 60 * 60 * 24)
        @access_token_expires_at = DateTime.now + expires_in_days
    end

    #
    # Resets access token
    #
    private def reset_access_token
        auth_config = Configuration.new(@config.app_sid, @config.app_key)
        auth_config.api_base_url = @config.api_base_url
        auth_config.debugging = @config.debugging
        auth_config.logger = @config.logger
        auth_config.temp_folder_path = @config.temp_folder_path
        auth_config.client_side_validation = @config.client_side_validation
        auth_config.api_version = ''

        auth_api_client = ApiClient.new(auth_config)

        request_url = "/oauth2/token"
        post_data = "grant_type=refresh_token&refresh_token=#{@refresh_token}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]
        @refresh_token = data[:refresh_token]

        expires_in_seconds = data[:expires_in].to_i - 5 * 60 
        expires_in_days = Rational(expires_in_seconds, 60 * 60 * 24)
        @access_token_expires_at = DateTime.now + expires_in_days
    end
    
    # requires all files inside a directory from current dir
    # @param _dir can be relative path like '/lib' or "../lib"
    private def require_all(_dir)
      Dir[File.expand_path(File.join(File.dirname(File.absolute_path(__FILE__)), _dir)) + "/*.rb"].each do |file|
        require file
      end
    end
  end
end
