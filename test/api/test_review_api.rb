#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2024 Aspose Pty Ltd
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

  class TestReviewApi < TestContext
    
    def test_changes_cells
      response = @review_api.get_revisions(GetRevisionsRequest.new TestFile::SourceWithRevs.file_info())
      assert_equal response.length, 2
    end

    def test_apply_revisions
        options = ApplyRevisionsOptions.new
        options.source_file = TestFile::SourceWithRevs.file_info()
        options.output_path = "/resultFilePath/result.docx"
        rev1 = RevisionInfo.new
        rev1.id = 0
        rev1.action = "Accept"
        rev2 = RevisionInfo.new
        rev2.id = 1
        rev2.action = "Reject" 
        options.revisions = [rev1, rev2]

        response = @review_api.apply_revisions(ApplyRevisionsRequest.new options)
        assert_equal response.rel, options.output_path
    end    

    def test_accept_all_revisions
        options = ApplyRevisionsOptions.new
        options.source_file = TestFile::SourceWithRevs.file_info()
        options.output_path = "/resultFilePath/result.docx"
        options.accept_all = true

        response = @review_api.apply_revisions(ApplyRevisionsRequest.new options)
        assert_equal response.rel, options.output_path
    end   

    def test_reject_all_revisions
        options = ApplyRevisionsOptions.new
        options.source_file = TestFile::SourceWithRevs.file_info()
        options.output_path = "/resultFilePath/result.docx"
        options.reject_all = true

        response = @review_api.apply_revisions(ApplyRevisionsRequest.new options)
        assert_equal response.rel, options.output_path
    end   

  end
end
