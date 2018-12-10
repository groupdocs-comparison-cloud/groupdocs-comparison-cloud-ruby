module GroupDocsComparisonCloud
  require 'groupdocs_comparison_cloud'
  require_relative './../test_setter.rb'
  require_relative './../../lib/groupdocs_comparison_cloud.rb'
  class ChangesApi < TestSetter
    def test_delete_fonts_cache
      status_code = @comparison_api.comparison_images(GetComparisonRequest("source.docx", ["target.docx"]))

      assert_equal 200, status_code
    end

  end
end