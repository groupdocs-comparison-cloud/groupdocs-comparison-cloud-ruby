module GroupDocsComparisonCloud
  require 'groupdocs_storage_cloud'
  require_relative './../test_context'
  require_relative './../test_settings'
  require_relative './../test_file'
  class TestChangesApi < TestContext
    include GroupDocsStorageCloud
    include MiniTest::Assertions
    def test_post_categories_changes
      tmp = GetComparisonRequest("source.docx", "target.docx")
      request = PostCategoriesChangesRequest.new(tmp,'ByNodeType')

      listComparisonChangesCategoryDto = @changes_api.post_categories_changes(request)
      listComparisonChangesCategoryDto.each do |comparisonChangesCategoryDto|
        assert comparisonChangesCategoryDto != nil
      end
    end

    def test_post_changes
      request = PostChangesRequest.new(GetComparisonRequest("source.docx", "target.docx"))
      response = @changes_api.post_changes(request)
      response.each do |comparisonChange|
        assert comparisonChange != nil
      end
    end

    def test_put_changes_document
      request = PutChangesDocumentRequest.new(GetComparisonRequest("source.docx", "target.docx"),"result.docx")
      response = @changes_api.put_changes_document(request)
      assert response != nil
    end
    def test_put_changes_document_stream
      request = PutChangesDocumentStreamRequest.new(GetComparisonRequest("source.docx", "target.docx"))
      response = @changes_api.put_changes_document_stream(request)
      assert response != nil
    end
    def test_put_changes_images
      request = PutChangesImagesRequest.new(GetComparisonRequest("source.docx", "target.docx"),"result.txt")
      response = @changes_api.put_changes_images(request)
      response.each do |imageLink|
        assert imageLink != nil
      end
    end
    def test_put_changes_images_stream
      request = PutChangesImagesStreamRequest.new(GetComparisonRequest("source.docx", "target.docx"))
      response = @changes_api.put_changes_images_stream(request)
      assert response != nil
    end
  end
end
