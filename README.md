# GroupDocs.Comparison Cloud Ruby SDK
Ruby gem for communicating with the GroupDocs.Comparison Cloud API

## Installation

A gem of groupdocs_comparison_cloud is available at [rubygems.org](https://rubygems.org). You can install it with:

```shell
gem install groupdocs_comparison_cloud
```    

To add dependency to your app copy following into your Gemfile and run `bundle install`:

```
gem "groupdocs_comparison_cloud", "~> 25.2"
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'groupdocs_comparison_cloud'

# Get your app_sid and app_key at https://dashboard.groupdocs.cloud (free registration is required).
app_sid = "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX"
app_key = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

# Create instance of the API class
api = GroupDocsComparisonCloud::InfoApi.from_keys(app_sid, app_key)

# Retrieve supported file-formats
response = api.get_supported_file_formats

# Print out supported file-formats
puts("Supported file-formats:")
response.formats.each do |format|
  puts("#{format.file_format} (#{format.extension})") 
end
```

## Licensing
GroupDocs.Comparison Cloud Ruby SDK licensed under [MIT License](LICENSE).

## Resources
+ [**Website**](https://www.groupdocs.cloud)
+ [**Product Home**](https://products.groupdocs.cloud/comparison)
+ [**Documentation**](https://docs.groupdocs.cloud/comparison)
+ [**Free Support Forum**](https://forum.groupdocs.cloud/c/comparison)
+ [**Blog**](https://blog.groupdocs.cloud/category/comparison)

## Contact Us
Your feedback is very important to us. Please feel free to contact us using our [Support Forums](https://forum.groupdocs.cloud/c/comparison).