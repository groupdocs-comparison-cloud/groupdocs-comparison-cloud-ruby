 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="items_style.rb">
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
  # ItemsStyle Object fields
  class ItemsStyle

    # Font color for changed components
    attr_accessor :font_color

    # Highlight color for changed components
    attr_accessor :highlight_color

    # Start tag for changed components
    attr_accessor :begin_separator_string

    # End tag for changed components
    attr_accessor :end_separator_string

    # Bold style for changed components
    attr_accessor :bold

    # Italic style for changed components
    attr_accessor :italic

    # Strikethrough style for changed components
    attr_accessor :strike_through

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'font_color' => :'FontColor',
        :'highlight_color' => :'HighlightColor',
        :'begin_separator_string' => :'BeginSeparatorString',
        :'end_separator_string' => :'EndSeparatorString',
        :'bold' => :'Bold',
        :'italic' => :'Italic',
        :'strike_through' => :'StrikeThrough'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'font_color' => :'String',
        :'highlight_color' => :'String',
        :'begin_separator_string' => :'String',
        :'end_separator_string' => :'String',
        :'bold' => :'BOOLEAN',
        :'italic' => :'BOOLEAN',
        :'strike_through' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'FontColor')
        self.font_color = attributes[:'FontColor']
      end

      if attributes.key?(:'HighlightColor')
        self.highlight_color = attributes[:'HighlightColor']
      end

      if attributes.key?(:'BeginSeparatorString')
        self.begin_separator_string = attributes[:'BeginSeparatorString']
      end

      if attributes.key?(:'EndSeparatorString')
        self.end_separator_string = attributes[:'EndSeparatorString']
      end

      if attributes.key?(:'Bold')
        self.bold = attributes[:'Bold']
      end

      if attributes.key?(:'Italic')
        self.italic = attributes[:'Italic']
      end

      if attributes.key?(:'StrikeThrough')
        self.strike_through = attributes[:'StrikeThrough']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @bold.nil?
        invalid_properties.push("invalid value for 'bold', bold cannot be nil.")
      end

      if @italic.nil?
        invalid_properties.push("invalid value for 'italic', italic cannot be nil.")
      end

      if @strike_through.nil?
        invalid_properties.push("invalid value for 'strike_through', strike_through cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bold.nil?
      return false if @italic.nil?
      return false if @strike_through.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          font_color == other.font_color &&
          highlight_color == other.highlight_color &&
          begin_separator_string == other.begin_separator_string &&
          end_separator_string == other.end_separator_string &&
          bold == other.bold &&
          italic == other.italic &&
          strike_through == other.strike_through
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [font_color, highlight_color, begin_separator_string, end_separator_string, bold, italic, strike_through].hash
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
