 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="settings.rb">
 #   Copyright (c) 2003-2019 Aspose Pty Ltd
 # </copyright>
 # <summary>
 #  Permission is hereby granted, free of charge, to any person obtaining a copy
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

require 'date'

module GroupDocsComparisonCloud
  # Defines comparison process additional settings 
  class Settings

    # Indicates whether to add summary page to resultant document or not
    attr_accessor :generate_summary_page

    # Indicates whether to show deleted components in resultant document or not
    attr_accessor :show_deleted_content

    # Indicates whether to detect style changes or not
    attr_accessor :style_change_detection

    # Style for inserted components
    attr_accessor :inserted_items_style

    # Style for deleted components
    attr_accessor :deleted_items_style

    # Style for components with changed style
    attr_accessor :style_changed_items_style

    # An array of delimiters to split text into words
    attr_accessor :words_separator_chars

    # Gets of sets the comparison detalisation level 
    attr_accessor :detail_level

    # Indicates whether to use frames for shapes in Word Processing and for rectangles in Image documents
    attr_accessor :use_frames_for_del_ins_elements

    # Indicates whether to calculate coordinates for changed components
    attr_accessor :calculate_component_coordinates

    # Indicates whether to accept inserted/deleted styles for all children of inserted/deleted components
    attr_accessor :mark_deleted_inserted_content_deep

    # Gets or sets type of metadata to clone
    attr_accessor :clone_metadata

    # Gets or sets user metadata
    attr_accessor :meta_data

    # Gets or sets type of password saving
    attr_accessor :password_save_option

    # Gets or sets user password to resultant document
    attr_accessor :password

    # Gets or sets master for Diagram document
    attr_accessor :diagram_master_setting

    # Gets or sets original document size when picture is compared with other different formats
    attr_accessor :original_size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'generate_summary_page' => :'GenerateSummaryPage',
        :'show_deleted_content' => :'ShowDeletedContent',
        :'style_change_detection' => :'StyleChangeDetection',
        :'inserted_items_style' => :'InsertedItemsStyle',
        :'deleted_items_style' => :'DeletedItemsStyle',
        :'style_changed_items_style' => :'StyleChangedItemsStyle',
        :'words_separator_chars' => :'WordsSeparatorChars',
        :'detail_level' => :'DetailLevel',
        :'use_frames_for_del_ins_elements' => :'UseFramesForDelInsElements',
        :'calculate_component_coordinates' => :'CalculateComponentCoordinates',
        :'mark_deleted_inserted_content_deep' => :'MarkDeletedInsertedContentDeep',
        :'clone_metadata' => :'CloneMetadata',
        :'meta_data' => :'MetaData',
        :'password_save_option' => :'PasswordSaveOption',
        :'password' => :'Password',
        :'diagram_master_setting' => :'DiagramMasterSetting',
        :'original_size' => :'OriginalSize'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'generate_summary_page' => :'BOOLEAN',
        :'show_deleted_content' => :'BOOLEAN',
        :'style_change_detection' => :'BOOLEAN',
        :'inserted_items_style' => :'ItemsStyle',
        :'deleted_items_style' => :'ItemsStyle',
        :'style_changed_items_style' => :'ItemsStyle',
        :'words_separator_chars' => :'Array<String>',
        :'detail_level' => :'String',
        :'use_frames_for_del_ins_elements' => :'BOOLEAN',
        :'calculate_component_coordinates' => :'BOOLEAN',
        :'mark_deleted_inserted_content_deep' => :'BOOLEAN',
        :'clone_metadata' => :'String',
        :'meta_data' => :'Metadata',
        :'password_save_option' => :'String',
        :'password' => :'String',
        :'diagram_master_setting' => :'DiagramMasterSetting',
        :'original_size' => :'OriginalSize'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'GenerateSummaryPage')
        self.generate_summary_page = attributes[:'GenerateSummaryPage']
      end

      if attributes.key?(:'ShowDeletedContent')
        self.show_deleted_content = attributes[:'ShowDeletedContent']
      end

      if attributes.key?(:'StyleChangeDetection')
        self.style_change_detection = attributes[:'StyleChangeDetection']
      end

      if attributes.key?(:'InsertedItemsStyle')
        self.inserted_items_style = attributes[:'InsertedItemsStyle']
      end

      if attributes.key?(:'DeletedItemsStyle')
        self.deleted_items_style = attributes[:'DeletedItemsStyle']
      end

      if attributes.key?(:'StyleChangedItemsStyle')
        self.style_changed_items_style = attributes[:'StyleChangedItemsStyle']
      end

      if attributes.key?(:'WordsSeparatorChars')
        if (value = attributes[:'WordsSeparatorChars']).is_a?(Array)
          self.words_separator_chars = value
        end
      end

      if attributes.key?(:'DetailLevel')
        self.detail_level = attributes[:'DetailLevel']
      end

      if attributes.key?(:'UseFramesForDelInsElements')
        self.use_frames_for_del_ins_elements = attributes[:'UseFramesForDelInsElements']
      end

      if attributes.key?(:'CalculateComponentCoordinates')
        self.calculate_component_coordinates = attributes[:'CalculateComponentCoordinates']
      end

      if attributes.key?(:'MarkDeletedInsertedContentDeep')
        self.mark_deleted_inserted_content_deep = attributes[:'MarkDeletedInsertedContentDeep']
      end

      if attributes.key?(:'CloneMetadata')
        self.clone_metadata = attributes[:'CloneMetadata']
      end

      if attributes.key?(:'MetaData')
        self.meta_data = attributes[:'MetaData']
      end

      if attributes.key?(:'PasswordSaveOption')
        self.password_save_option = attributes[:'PasswordSaveOption']
      end

      if attributes.key?(:'Password')
        self.password = attributes[:'Password']
      end

      if attributes.key?(:'DiagramMasterSetting')
        self.diagram_master_setting = attributes[:'DiagramMasterSetting']
      end

      if attributes.key?(:'OriginalSize')
        self.original_size = attributes[:'OriginalSize']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @generate_summary_page.nil?
        invalid_properties.push("invalid value for 'generate_summary_page', generate_summary_page cannot be nil.")
      end

      if @show_deleted_content.nil?
        invalid_properties.push("invalid value for 'show_deleted_content', show_deleted_content cannot be nil.")
      end

      if @style_change_detection.nil?
        invalid_properties.push("invalid value for 'style_change_detection', style_change_detection cannot be nil.")
      end

      if @use_frames_for_del_ins_elements.nil?
        invalid_properties.push("invalid value for 'use_frames_for_del_ins_elements', use_frames_for_del_ins_elements cannot be nil.")
      end

      if @calculate_component_coordinates.nil?
        invalid_properties.push("invalid value for 'calculate_component_coordinates', calculate_component_coordinates cannot be nil.")
      end

      if @mark_deleted_inserted_content_deep.nil?
        invalid_properties.push("invalid value for 'mark_deleted_inserted_content_deep', mark_deleted_inserted_content_deep cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @generate_summary_page.nil?
      return false if @show_deleted_content.nil?
      return false if @style_change_detection.nil?
      return false if @use_frames_for_del_ins_elements.nil?
      return false if @calculate_component_coordinates.nil?
      return false if @mark_deleted_inserted_content_deep.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          generate_summary_page == other.generate_summary_page &&
          show_deleted_content == other.show_deleted_content &&
          style_change_detection == other.style_change_detection &&
          inserted_items_style == other.inserted_items_style &&
          deleted_items_style == other.deleted_items_style &&
          style_changed_items_style == other.style_changed_items_style &&
          words_separator_chars == other.words_separator_chars &&
          detail_level == other.detail_level &&
          use_frames_for_del_ins_elements == other.use_frames_for_del_ins_elements &&
          calculate_component_coordinates == other.calculate_component_coordinates &&
          mark_deleted_inserted_content_deep == other.mark_deleted_inserted_content_deep &&
          clone_metadata == other.clone_metadata &&
          meta_data == other.meta_data &&
          password_save_option == other.password_save_option &&
          password == other.password &&
          diagram_master_setting == other.diagram_master_setting &&
          original_size == other.original_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [generate_summary_page, show_deleted_content, style_change_detection, inserted_items_style, deleted_items_style, style_changed_items_style, words_separator_chars, detail_level, use_frames_for_del_ins_elements, calculate_component_coordinates, mark_deleted_inserted_content_deep, clone_metadata, meta_data, password_save_option, password, diagram_master_setting, original_size].hash
    end

    # Downcases first letter.
    # @return downcased string
    def uncap(str)
      str[0, 1].downcase + str[1..-1]
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        pname = uncap(self.class.attribute_map[key]).intern
        value = attributes[pname]
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not                    
          if value.is_a?(Array)
            self.send("#{key}=", value.map { |v| _deserialize($1, v) })
          end
        elsif !value.nil?
          self.send("#{key}=", _deserialize(type, value))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Date.parse value
      when :Date
        Date.parse value
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = GroupDocsComparisonCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
