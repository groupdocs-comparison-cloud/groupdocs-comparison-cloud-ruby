#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) Aspose Pty Ltd
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

  require_relative './../test_context'
  require_relative './../test_file'

  class TestPutChanges < TestContext

    TEST_FILES_PATH = "test/test_files/"

    def test_put_changes_word
      source_file = File.open(TEST_FILES_PATH + TestFile::SourceWord.path, "rb")
      target_file = File.open(TEST_FILES_PATH + TestFile::TargetWord.path, "rb")

      request = PutChangesRequest.new(source_file, target_file)
      response = @compare_api.put_changes(request)

      assert response.length > 0
    ensure
      source_file&.close
      target_file&.close
    end

    def test_put_changes_pdf
      source_file = File.open(TEST_FILES_PATH + TestFile::SourcePdf.path, "rb")
      target_file = File.open(TEST_FILES_PATH + TestFile::TargetPdf.path, "rb")

      request = PutChangesRequest.new(source_file, target_file)
      response = @compare_api.put_changes(request)

      assert response.length > 0
    ensure
      source_file&.close
      target_file&.close
    end

    def test_put_changes_with_settings
      source_file = File.open(TEST_FILES_PATH + TestFile::SourceWord.path, "rb")
      target_file = File.open(TEST_FILES_PATH + TestFile::TargetWord.path, "rb")

      settings = { "generateSummaryPage" => true, "showDeletedContent" => true }.to_json
      request = PutChangesRequest.new(source_file, target_file, settings)
      response = @compare_api.put_changes(request)

      assert response.length > 0
    ensure
      source_file&.close
      target_file&.close
    end

    def test_put_changes_with_change_type_filter
      source_file = File.open(TEST_FILES_PATH + TestFile::SourceWord.path, "rb")
      target_file = File.open(TEST_FILES_PATH + TestFile::TargetWord.path, "rb")

      request = PutChangesRequest.new(source_file, target_file, nil, "Inserted")
      response = @compare_api.put_changes(request)

      assert response.length > 0
    ensure
      source_file&.close
      target_file&.close
    end

    def test_put_changes_missing_source_raises
      assert_raises(ArgumentError) do
        @compare_api.put_changes(PutChangesRequest.new(nil, nil))
      end
    end

  end
end
