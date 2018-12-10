#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_file.rb">
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
    class TestFile
        attr_accessor :file_name;
        attr_accessor :folder;
        attr_accessor :password;
        attr_accessor :url;
        attr_accessor :attachment_name;
        attr_accessor :attachment_password;





        def self.source_docx
            f = TestFile.new
            f.file_name = "source.docx"
            f.folder = ""
            f.attachment_name = "source.docx"
            f.attachment_password = ""

            f
        end

        def self.source1_docx
            f = TestFile.new
            f.file_name = "source1.docx"
            f.folder = ""
            f.attachment_name = "source1.docx"
            f.attachment_password = ""

            f
        end

        def self.target_docx
            f = TestFile.new
            f.file_name = "target.docx"
            f.folder = ""
            f.attachment_name = "target.docx"
            f.attachment_password = ""

            f
        end

        def self.target1_docx
            f = TestFile.new
            f.file_name = "target1.docx"
            f.folder = ""
            f.attachment_name = "target1.docx"
            f.attachment_password = ""

            f
        end

        def self.target_1_docx
            f = TestFile.new
            f.file_name = "target_1.docx"
            f.folder = ""
            f.attachment_name = "target_1.docx"
            f.attachment_password = ""

            f
        end

        def self.target_2_docx
            f = TestFile.new
            f.file_name = "target_2.docx"
            f.folder = ""
            f.attachment_name = "target_2.docx"
            f.attachment_password = ""

            f
        end
    end
end