#
# --------------------------------------------------------------------------------------------------------------------
# <copyright company="Aspose Pty Ltd" file="test_file.rb">
#    Copyright (c) 2003-2021 Aspose Pty Ltd
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
        
        def initialize (file_name, folder, password = nil)
            @file_name = file_name
            @folder = folder
            @password = password
        end

        def path
            folder + file_name
        end

        def file_info
            info = FileInfo.new
            info.file_path = path
            info.password = password
            info
        end        

        SourceCell = TestFile.new("source.xlsx", "source_files\\cell\\")
        SourceDiagram = TestFile.new("source.vsdx", "source_files\\diagram\\")
        SourceEmail = TestFile.new("source.eml", "source_files\\email\\")
        SourceHtml = TestFile.new("source.html", "source_files\\html\\")
        SourceImage = TestFile.new("source.png", "source_files\\image\\")
        SourceNote = TestFile.new("source.one", "source_files\\note\\")
        SourcePdf = TestFile.new("source.pdf", "source_files\\pdf\\")
        SourceSlide = TestFile.new("source.pptx", "source_files\\slide\\")
        SourceText = TestFile.new("source.txt", "source_files\\text\\")
        SourceWord = TestFile.new("source.docx", "source_files\\word\\")
        SourceWithRevs = TestFile.new("source_with_revs.docx", "source_files\\word\\")
    
        SourceCellProtected = TestFile.new("source_protected.xlsx", "source_files\\cell\\", "1231")
        SourceNoteProtected = TestFile.new("source_protected.one", "source_files\\note\\", "123")
        SourcePdfProtected = TestFile.new("source_protected.pdf", "source_files\\pdf\\", "12345678")
        SourceSlideProtected = TestFile.new("source_protected.pptx", "source_files\\slide\\", "1231")
        SourceWordProtected = TestFile.new("source_protected.docx", "source_files\\word\\", "1231")
    
    
        TargetCell = TestFile.new("target.xlsx", "target_files\\cell\\")
        TargetDiagram = TestFile.new("target.vsdx", "target_files\\diagram\\")
        TargetEmail = TestFile.new("target.eml", "target_files\\email\\")
        TargetHtml = TestFile.new("target.html", "target_files\\html\\")
        TargetImage = TestFile.new("target.png", "target_files\\image\\")
        TargetNote = TestFile.new("target.one", "target_files\\note\\")
        TargetPdf = TestFile.new("target.pdf", "target_files\\pdf\\")
        TargetSlide = TestFile.new("target.pptx", "target_files\\slide\\")
        TargetText = TestFile.new("target.txt", "target_files\\text\\")
        TargetWord = TestFile.new("target.docx", "target_files\\word\\")
    
        TargetCellProtected = TestFile.new("target_protected.xlsx", "target_files\\cell\\", "1471")
        TargetNoteProtected = TestFile.new("target_protected.one", "target_files\\note\\", "123")
        TargetPdfProtected = TestFile.new("target_protected.pdf", "target_files\\pdf\\", "0987654")
        TargetSlideProtected = TestFile.new("target_protected.pptx", "target_files\\slide\\", "1471")
        TargetWordProtected = TestFile.new("target_protected.docx", "target_files\\word\\", "5784")
    
        TargetSlide1 = TestFile.new("target_1.pptx", "target_files\\slide\\")
        TargetSlide2 = TestFile.new("target_2.pptx", "target_files\\slide\\")
        TargetSlide1Protected = TestFile.new("target_1_protected.pptx", "target_files\\slide\\", "1471")
        TargetSlide2Protected = TestFile.new("target_2_protected.pptx", "target_files\\slide\\", "1471")
        TargetWord1 = TestFile.new("target_1.docx", "target_files\\word\\")
        TargetWord2 = TestFile.new("target_2.docx", "target_files\\word\\")
        TargetWord1Protected = TestFile.new("target_1_protected.docx", "target_files\\word\\", "5784")
        TargetWord2Protected = TestFile.new("target_2_protected.docx", "target_files\\word\\", "5784")

        def self.test_files_list
            [
                SourceCell,
                SourceDiagram,
                SourceEmail,
                SourceHtml,
                SourceImage,
                SourceNote,
                SourcePdf,
                SourceSlide,
                SourceText,
                SourceWord,
                SourceWithRevs,
                SourceCellProtected,
                SourceNoteProtected,
                SourcePdfProtected,
                SourceSlideProtected,
                SourceWordProtected,
                TargetCell,
                TargetDiagram,
                TargetEmail,
                TargetHtml,
                TargetImage,
                TargetNote,
                TargetPdf,
                TargetSlide,
                TargetText,
                TargetWord,
                TargetCellProtected,
                TargetNoteProtected,
                TargetPdfProtected,
                TargetSlideProtected,
                TargetWordProtected,
                TargetSlide1,
                TargetSlide2,
                TargetSlide1Protected,
                TargetSlide2Protected,
                TargetWord1,
                TargetWord2,
                TargetWord1Protected,
                TargetWord2Protected                
            ]        
        end
    end
end