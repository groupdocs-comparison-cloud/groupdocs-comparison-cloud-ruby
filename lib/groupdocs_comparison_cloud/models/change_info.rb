 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="change_info.rb">
 #   Copyright (c) 2003-2021 Aspose Pty Ltd
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
  # ChangeInfo Object fields
  class ChangeInfo

    # Id of change
    attr_accessor :id

    # Action (accept or reject). This field shows comparison what to do with this change
    attr_accessor :comparison_action

    # Type of change (Inserted, Deleted or StyleChanged)
    attr_accessor :type

    # Text of changed element
    attr_accessor :text

    # Changed text of target doc
    attr_accessor :target_text

    # Array of authors who made this change (used for multi comparison)
    attr_accessor :authors

    # Array of style changes
    attr_accessor :style_change_info

    # Page where current change is placed
    attr_accessor :page_info

    # Coordinates of changed element
    attr_accessor :box
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'comparison_action' => :'ComparisonAction',
        :'type' => :'Type',
        :'text' => :'Text',
        :'target_text' => :'TargetText',
        :'authors' => :'Authors',
        :'style_change_info' => :'StyleChangeInfo',
        :'page_info' => :'PageInfo',
        :'box' => :'Box'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'comparison_action' => :'String',
        :'type' => :'String',
        :'text' => :'String',
        :'target_text' => :'String',
        :'authors' => :'Array<String>',
        :'style_change_info' => :'Array<StyleChangeInfo>',
        :'page_info' => :'PageInfo',
        :'box' => :'Rectangle'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'Id')
        self.id = attributes[:'Id']
      end

      if attributes.key?(:'ComparisonAction')
        self.comparison_action = attributes[:'ComparisonAction']
      end

      if attributes.key?(:'Type')
        self.type = attributes[:'Type']
      end

      if attributes.key?(:'Text')
        self.text = attributes[:'Text']
      end

      if attributes.key?(:'TargetText')
        self.target_text = attributes[:'TargetText']
      end

      if attributes.key?(:'Authors')
        if (value = attributes[:'Authors']).is_a?(Array)
          self.authors = value
        end
      end

      if attributes.key?(:'StyleChangeInfo')
        if (value = attributes[:'StyleChangeInfo']).is_a?(Array)
          self.style_change_info = value
        end
      end

      if attributes.key?(:'PageInfo')
        self.page_info = attributes[:'PageInfo']
      end

      if attributes.key?(:'Box')
        self.box = attributes[:'Box']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @comparison_action.nil?
        invalid_properties.push("invalid value for 'comparison_action', comparison_action cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @box.nil?
        invalid_properties.push("invalid value for 'box', box cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @comparison_action.nil?
      comparison_action_validator = EnumAttributeValidator.new('String', ["None", "Accept", "Reject"])
      return false unless comparison_action_validator.valid?(@comparison_action)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["None", "Modified", "Inserted", "Deleted", "Added", "NotModified", "StyleChanged", "Resized", "Moved", "MovedAndResized", "ShiftedAndResized"])
      return false unless type_validator.valid?(@type)
      return false if @box.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comparison_action Object to be assigned
    def comparison_action=(comparison_action)
      validator = EnumAttributeValidator.new('String', ["None", "Accept", "Reject"])
      if comparison_action.to_i == 0
        unless validator.valid?(comparison_action)
          raise ArgumentError, "invalid value for 'comparison_action', must be one of #{validator.allowable_values}."
        end
        @comparison_action = comparison_action
      else
        @comparison_action = validator.allowable_values[comparison_action.to_i]
      end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["None", "Modified", "Inserted", "Deleted", "Added", "NotModified", "StyleChanged", "Resized", "Moved", "MovedAndResized", "ShiftedAndResized"])
      if type.to_i == 0
        unless validator.valid?(type)
          raise ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
        end
        @type = type
      else
        @type = validator.allowable_values[type.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          id == other.id &&
          comparison_action == other.comparison_action &&
          type == other.type &&
          text == other.text &&
          target_text == other.target_text &&
          authors == other.authors &&
          style_change_info == other.style_change_info &&
          page_info == other.page_info &&
          box == other.box
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, comparison_action, type, text, target_text, authors, style_change_info, page_info, box].hash
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
