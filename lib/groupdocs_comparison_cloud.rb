# ------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="groupdocs_comparison_cloud.rb">
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
# ------------------------------------------------------------------------------------

# Common files
require_relative 'groupdocs_comparison_cloud/api_client'
require_relative 'groupdocs_comparison_cloud/api_error'
require_relative 'groupdocs_comparison_cloud/version'
require_relative 'groupdocs_comparison_cloud/configuration'

# Models
require_relative 'groupdocs_comparison_cloud/models/comparison_change'
require_relative 'groupdocs_comparison_cloud/models/comparison_changes_category_dto'
require_relative 'groupdocs_comparison_cloud/models/comparison_file_info'
require_relative 'groupdocs_comparison_cloud/models/comparison_metadata_values'
require_relative 'groupdocs_comparison_cloud/models/comparison_request'
require_relative 'groupdocs_comparison_cloud/models/comparison_request_settings'
require_relative 'groupdocs_comparison_cloud/models/comparison_style_change'
require_relative 'groupdocs_comparison_cloud/models/link'
require_relative 'groupdocs_comparison_cloud/models/style_settings_values'
require_relative 'groupdocs_comparison_cloud/models/value_type'
require_relative 'groupdocs_comparison_cloud/models/color'

# APIs
require_relative 'groupdocs_comparison_cloud/api/changes_api'
require_relative 'groupdocs_comparison_cloud/api/comparison_api'

module GroupDocsComparisonCloud
  # Main module
  class << self
    # Initialize SDK with API keys.
    # 
    # app_sid = "xxx"
    # app_key = "xxx"
    #
    # GroupDocsComparisonCloud.from_keys(app_sid, app_key)
    def from_keys(app_sid, app_key)
      ComparisonApi.from_keys(app_sid, app_key)
    end

    # Initialize SDK with Configuration.
    # 
    # app_sid = "xxx"
    # app_key = "xxx"
    #
    # config = GroupDocsComparisonCloud::Configuration.new(app_sid, app_key)
    # config.debugging = true
    # config.temp_folder_path = "./temp"
    #
    # GroupDocsComparisonCloud.from_config(config)
    def from_config(config)
      ComparisonApi.from_config(config)
    end
  end
end
