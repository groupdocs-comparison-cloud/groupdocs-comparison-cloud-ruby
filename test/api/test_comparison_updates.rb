#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd">
#    Copyright (c) 2003-2022 Aspose Pty Ltd
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

  class TestComparisonUpdates < TestContext
    
    def test_updates_cells
      options = GetComparisonOptions(TestFile::SourceCell, TestFile::TargetCell)
      response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
      assert_equal response.rel, options.output_path
    end

    def test_updates_diagram
        options = GetComparisonOptions(TestFile::SourceDiagram, TestFile::TargetDiagram)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end        

    def test_updates_email
        options = GetComparisonOptions(TestFile::SourceEmail, TestFile::TargetEmail)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end

    def test_updates_html
        options = GetComparisonOptions(TestFile::SourceHtml, TestFile::TargetHtml)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end 

    def test_updates_image
        options = GetComparisonOptions(TestFile::SourceImage, TestFile::TargetImage)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end 

    def test_updates_note
        options = GetComparisonOptions(TestFile::SourceNote, TestFile::TargetNote)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end

    def test_updates_note_protected
        options = GetComparisonOptions(TestFile::SourceNoteProtected, TestFile::TargetNoteProtected)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end

    def test_updates_pdf
        options = GetComparisonOptions(TestFile::SourcePdf, TestFile::TargetPdf)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end

    def test_updates_pdf_protected
        options = GetComparisonOptions(TestFile::SourcePdfProtected, TestFile::TargetPdfProtected)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end

    def test_updates_text
        options = GetComparisonOptions(TestFile::SourceText, TestFile::TargetText)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end

    def test_updates_word
        options = GetComparisonOptions(TestFile::SourceWord, TestFile::TargetWord)
        response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
        assert_equal response.rel, options.output_path
    end

    def test_updates_word_protected
      options = GetComparisonOptions(TestFile::SourceWordProtected, TestFile::TargetWordProtected)
      response = @compare_api.put_changes_document(PutChangesDocumentRequest.new options)
      assert_equal response.rel, options.output_path
    end

    def GetComparisonOptions(source, target)
        options = UpdatesOptions.new
        options.source_file = source.file_info()
        options.output_path = "/resultFilePath/" + source.file_name
        
        options.settings = Settings.new
        options.settings.generate_summary_page = true
        options.settings.show_deleted_content = true
        options.settings.style_change_detection = true
        options.settings.use_frames_for_del_ins_elements = false
        options.settings.meta_data = nil
        options.settings.details_level = "Low"
        options.settings.diagram_master_setting = nil
        options.settings.calculate_component_coordinates = false
        options.settings.clone_metadata = "Default"
        options.settings.password = "1111"
        options.settings.password_save_option = "User"
        
        options.settings.deleted_items_style = ItemsStyle.new    
        options.settings.deleted_items_style.begin_separator_string = ""
        options.settings.deleted_items_style.end_separator_string = ""
        options.settings.deleted_items_style.font_color = "16711680"
        options.settings.deleted_items_style.highlight_color = "16711680"
        options.settings.deleted_items_style.bold = false
        options.settings.deleted_items_style.italic = false
        options.settings.deleted_items_style.strike_through = false
        
        options.settings.inserted_items_style = ItemsStyle.new     
        options.settings.inserted_items_style.begin_separator_string = ""
        options.settings.inserted_items_style.end_separator_string = ""
        options.settings.inserted_items_style.font_color = "255"
        options.settings.inserted_items_style.highlight_color = "255"
        options.settings.inserted_items_style.bold = false
        options.settings.inserted_items_style.italic = false
        options.settings.inserted_items_style.strike_through = false
        
        options.settings.changed_items_style = ItemsStyle.new
        options.settings.changed_items_style.begin_separator_string = ""
        options.settings.changed_items_style.end_separator_string = ""
        options.settings.changed_items_style.font_color = "65280"
        options.settings.changed_items_style.highlight_color = "65280"
        options.settings.changed_items_style.bold = false
        options.settings.changed_items_style.italic = false
        options.settings.changed_items_style.strike_through = false
      
        options.target_files = [target.file_info()]

        cInfo1 = ChangeInfo.new
        cInfo1.id = 0
        cInfo1.comparison_action = "Accept"
        cInfo2 = ChangeInfo.new
        cInfo2.id = 1
        cInfo2.comparison_action = "Reject"   

        options.changes = [cInfo1, cInfo2]
        options
    end
  end
end
