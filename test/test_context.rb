#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_contex.rb">
#    Copyright (c) 2003-2018 Aspose Pty Ltd
# </copyright>
# <summary>
#   Permission is hereby granted, free of charge, to any person obtaining a copy
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

    require "minitest/autorun"
    require "minitest/unit"
    require 'groupdocs_storage_cloud'

    require_relative './../lib/groupdocs_comparison_cloud'
    require_relative './test_settings'

    class TestContext < Minitest::Test

      include GroupDocsStorageCloud
      include MiniTest::Assertions

      @@test_files_uploaded ||= false

      def setup
        init_comparison_api
        init_storage_api
        #upload_test_files
      end

      def teardown
        remove_folder_in_storage "cache"
        remove_folder_in_storage "tests"
      end

      def init_comparison_api
        config = Configuration.new(TestSettings::APP_SID, TestSettings::APP_KEY)
        config.api_base_url = TestSettings::API_BASE_URL

        @changes_api = ChangesApi.from_config(config)
        @comparison_api = ComparisonApi.from_config(config)
      end

      def init_storage_api
        GroupDocsStorageCloud.configure do |conf|
          conf.api_key['api_key'] = TestSettings::APP_KEY
          conf.api_key['app_sid'] = TestSettings::APP_SID
          conf.host = TestSettings::API_BASE_URL
        end

        @storage_api = StorageApi.new
      end

      def remove_folder_in_storage(folder)
        request = DeleteFolderRequest.new(folder, nil, true)
        @storage_api.delete_folder request
      end

      def upload_test_files
        unless @@test_files_uploaded then
          test_file_path = File.dirname(__FILE__) + "./test_files/"
          test_files = list_files test_file_path

          test_files.each do |file_path|
            remote_file_path = file_path.sub(test_file_path, "")
            test_file = File.open(file_path, "r").read

            file_exist_request = GetIsExistRequest.new remote_file_path
            file_exist_response = @storage_api.get_is_exist file_exist_request

            if !file_exist_response.file_exist.is_exist then
              upload_file_request = PutCreateRequest.new remote_file_path, test_file
              @storage_api.put_create upload_file_request
            end
          end
          @@test_files_uploaded = true
        end
      end

      def list_files(base_path)
        Dir.glob("#{base_path}**/*").select { |path| File.file? path }
      end

      def get_test_file(file)
        base_path = File.dirname(__FILE__) + "/test_files"
        test_file_folder = file.folder.sub("\\", "/")
        test_file_path = "#{base_path}/#{test_file_folder}/#{file.file_name}"

        File.open(test_file_path, "r")
      end
      def GetComparisonRequest(sourceName,*targetsNames)
        request = ComparisonRequest.new;
        setting = ComparisonRequestSettings.new;
        setting.generate_summary_page = true;
        setting.show_deleted_content = true;
        setting.style_change_detection = true;
        setting.use_frames_for_del_ins_elements = false;
        setting.detail_level = "Low";

        deletedItemStyle = StyleSettingsValues.new;
        deletedItemStyle.begin_separator_string = "";
        deletedItemStyle.end_separator_string = "";
        deletedItemStyle.color = Color.new.red;

        setting.deleted_items_style = deletedItemStyle;

        insertedItemStyle = StyleSettingsValues.new;
        insertedItemStyle.begin_separator_string = "";
        insertedItemStyle.end_separator_string = "";
        insertedItemStyle.color = Color.new.blue;

        setting.inserted_items_style = insertedItemStyle;

        styleChangeItemStyle = StyleSettingsValues.new;
        styleChangeItemStyle.begin_separator_string= "";
        styleChangeItemStyle.end_separator_string = "";
        styleChangeItemStyle.color = Color.new.green;

        setting.style_changed_items_style = styleChangeItemStyle;

        setting.calculate_component_coordinates = false;
        setting.clone_metadata = "Source";
        setting.mark_deleted_inserted_content_deep = false;
        setting.meta_data = nil;
        setting.password = "1111";
        setting.password_save_option = "User";

        request.settings = setting;

        sourseFile = ComparisonFileInfo.new;
        sourseFile.folder = "";
        sourseFile.password = "";
        sourseFile.name = sourceName;

        request.source_file = sourseFile;

        targets = Array.new;

        targetsNames.each do |targetName|
          comparisonFileInfo = ComparisonFileInfo.new;
          comparisonFileInfo.name = ""+targetName;
          comparisonFileInfo.folder = "";
          comparisonFileInfo.password = "";
          targets.push(comparisonFileInfo);
        end

        request.target_files = targets;

        comparisonChanges = Array.new(2);

        comparisonChanges[0] = ComparisonChange.new;
        comparisonChanges[0].id = 0;
        comparisonChanges[0].action = "Accept";
        comparisonChanges[1] = ComparisonChange.new;
        comparisonChanges[1].id = 1;
        comparisonChanges[1].action = "Reject";

        request.changes = comparisonChanges;

        request
      end
    end
end