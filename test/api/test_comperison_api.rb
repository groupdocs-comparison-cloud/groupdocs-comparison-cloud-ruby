module GroupDocsComparisonCloud
require 'groupdocs_storage_cloud'
require_relative './../test_context'
require_relative './../test_settings'
require_relative './../test_file'
  class TestComperisonApi< TestContext
    include GroupDocsStorageCloud
    include MiniTest::Assertions
    def test_comparison
      request = ComparisonRequest1.new(GetComparisonRequest("source.docx","target.docx"),"result.docx")
      response  = @comparison_api.comparison(request)
      assert response != nil
    end

    def test_comparison_images
      request = ComparisonImagesRequest.new(GetComparisonRequest("source.docx","target.docx"),"result.docx")
      response  = @comparison_api.comparison_images(request)
      assert response != nil
    end

    def test_comparison_images_streams
      request = ComparisonImagesStreamRequest.new(GetComparisonRequest("source.docx","target.docx"))
      response  = @comparison_api.comparison_images_stream(request)
      assert response != nil
    end

    def test_comparison_streams
      request = ComparisonStreamRequest.new(GetComparisonRequest("source.docx","target.docx"))
      response  = @comparison_api.comparison_stream(request)
      assert response != nil
    end

  end
end