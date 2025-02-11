# -----------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="compare.rb">
#   Copyright (c) Aspose Pty Ltd
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
  class CompareApi
    attr_accessor :config

    #make CompareApi.new private 
    private_class_method :new

    # Initializes new instance of CompareApi
    #
    # @param [config] Configuration 
    # @return [CompareApi] New instance of CompareApi
    def initialize(config)
      @config = config
      @api_client = ApiClient.new(config)
      @access_token = nil
    end

    # Initializes new instance of CompareApi
    #
    # @param [app_sid] Application identifier (App SID)
    # @param [app_key] Application private key (App Key)
    # @return [CompareApi] New instance of CompareApi
    def self.from_keys(app_sid, app_key)
      config = Configuration.new(app_sid, app_key)
      return new(config)
    end

    # Initializes new instance of CompareApi
    #
    # @param [config] Configuration 
    # @return [CompareApi] New instance of CompareApi
    def self.from_config(config)
      return new(config)
    end

    # Compares source and target documents and returns a link to saved result
    # 
    # @param request comparisons_request
    # @return [Link]
    def comparisons(request)
      data, _status_code, _headers = comparisons_with_http_info(request)
      data
    end

    # Compares source and target documents and returns a link to saved result
    # 
    # @param request comparisons_request
    # @return [Array<(Link, Fixnum, Hash)>]
    # Link data, response status code and response headers
    def comparisons_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? ComparisonsRequest

      @api_client.config.logger.debug 'Calling API: CompareApi.comparisons ...' if @api_client.config.debugging
      # verify the required parameter 'comparison_options' is set
      raise ArgumentError, 'Missing the required parameter comparison_options when calling CompareApi.comparisons' if @api_client.config.client_side_validation && request.comparison_options.nil?
      # resource path
      local_var_path = '/comparison/comparisons'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.comparison_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Link')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CompareApi#comparisons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Retrieves a list of changes between source and target documents
    # 
    # @param request post_changes_request
    # @return [Array<ChangeInfo>]
    def post_changes(request)
      data, _status_code, _headers = post_changes_with_http_info(request)
      data
    end

    # Retrieves a list of changes between source and target documents
    # 
    # @param request post_changes_request
    # @return [Array<(Array<ChangeInfo>, Fixnum, Hash)>]
    # Array<ChangeInfo> data, response status code and response headers
    def post_changes_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PostChangesRequest

      @api_client.config.logger.debug 'Calling API: CompareApi.post_changes ...' if @api_client.config.debugging
      # verify the required parameter 'comparison_options' is set
      raise ArgumentError, 'Missing the required parameter comparison_options when calling CompareApi.post_changes' if @api_client.config.client_side_validation && request.comparison_options.nil?
      # resource path
      local_var_path = '/comparison/changes'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.comparison_options)
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Array<ChangeInfo>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CompareApi#post_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # Accepts or rejects changes to the resultant document and returns a link to saved result
    # 
    # @param request put_changes_document_request
    # @return [Link]
    def put_changes_document(request)
      data, _status_code, _headers = put_changes_document_with_http_info(request)
      data
    end

    # Accepts or rejects changes to the resultant document and returns a link to saved result
    # 
    # @param request put_changes_document_request
    # @return [Array<(Link, Fixnum, Hash)>]
    # Link data, response status code and response headers
    def put_changes_document_with_http_info(request)
      raise ArgumentError, 'Incorrect request type' unless request.is_a? PutChangesDocumentRequest

      @api_client.config.logger.debug 'Calling API: CompareApi.put_changes_document ...' if @api_client.config.debugging
      # verify the required parameter 'updates_options' is set
      raise ArgumentError, 'Missing the required parameter updates_options when calling CompareApi.put_changes_document' if @api_client.config.client_side_validation && request.updates_options.nil?
      # resource path
      local_var_path = '/comparison/updates'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(request.updates_options)
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
                                                        header_params: header_params,
                                                        query_params: query_params,
                                                        form_params: form_params,
                                                        body: post_body,
                                                        access_token: get_access_token,
                                                        return_type: 'Link')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called:
        CompareApi#put_changes_document\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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

        request_url = "/connect/token"
        post_data = "grant_type=client_credentials&client_id=#{@config.app_sid}&client_secret=#{@config.app_key}"

        data, _status_code, _header = auth_api_client.call_api(:POST, request_url, :body => post_data, :return_type => 'Object')
        
        @access_token = data[:access_token]

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
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="comparisons_request.rb">
 #   Copyright (c) Aspose Pty Ltd
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
 # --------------------------------------------------------------------------------------------------------------------
 #

module GroupDocsComparisonCloud

  #
  # Request model for comparisons operation.
  #
  class ComparisonsRequest

        # Comparison options
        attr_accessor :comparison_options
	
        #
        # Initializes a new instance.
        # @param comparison_options Comparison options
        def initialize(comparison_options)
           self.comparison_options = comparison_options
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="post_changes_request.rb">
 #   Copyright (c) Aspose Pty Ltd
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
 # --------------------------------------------------------------------------------------------------------------------
 #

module GroupDocsComparisonCloud

  #
  # Request model for post_changes operation.
  #
  class PostChangesRequest

        # Comparison options
        attr_accessor :comparison_options
	
        #
        # Initializes a new instance.
        # @param comparison_options Comparison options
        def initialize(comparison_options)
           self.comparison_options = comparison_options
        end
  end
end
 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="put_changes_document_request.rb">
 #   Copyright (c) Aspose Pty Ltd
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
 # --------------------------------------------------------------------------------------------------------------------
 #

module GroupDocsComparisonCloud

  #
  # Request model for put_changes_document operation.
  #
  class PutChangesDocumentRequest

        # Comparison options
        attr_accessor :updates_options
	
        #
        # Initializes a new instance.
        # @param updates_options Comparison options
        def initialize(updates_options)
           self.updates_options = updates_options
        end
  end
end
