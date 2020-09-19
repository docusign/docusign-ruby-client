=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.13-SNAPSHOT

=end

require 'date'

module DocuSign_eSign
  class AccountSignatureDefinition
    attr_accessor :date_stamp_properties

    # 
    attr_accessor :disallow_user_resize_stamp

    # 
    attr_accessor :external_id

    # 
    attr_accessor :image_type

    # 
    attr_accessor :is_default

    # 
    attr_accessor :nrds_id

    # 
    attr_accessor :nrds_last_name

    # 
    attr_accessor :phonetic_name

    # 
    attr_accessor :signature_font

    # 
    attr_accessor :signature_groups

    # Specifies the signature ID associated with the signature name. You can use the signature ID in the URI in place of the signature name, and the value stored in the `signatureName` property in the body is used. This allows the use of special characters (such as \"&\", \"<\", \">\") in a the signature name. Note that with each update to signatures, the returned signature ID might change, so the caller will need to trigger off the signature name to get the new signature ID.
    attr_accessor :signature_id

    # 
    attr_accessor :signature_initials

    # Specifies the user signature name.
    attr_accessor :signature_name

    # 
    attr_accessor :signature_users

    # 
    attr_accessor :stamp_format

    # 
    attr_accessor :stamp_size_mm

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date_stamp_properties' => :'dateStampProperties',
        :'disallow_user_resize_stamp' => :'disallowUserResizeStamp',
        :'external_id' => :'externalID',
        :'image_type' => :'imageType',
        :'is_default' => :'isDefault',
        :'nrds_id' => :'nrdsId',
        :'nrds_last_name' => :'nrdsLastName',
        :'phonetic_name' => :'phoneticName',
        :'signature_font' => :'signatureFont',
        :'signature_groups' => :'signatureGroups',
        :'signature_id' => :'signatureId',
        :'signature_initials' => :'signatureInitials',
        :'signature_name' => :'signatureName',
        :'signature_users' => :'signatureUsers',
        :'stamp_format' => :'stampFormat',
        :'stamp_size_mm' => :'stampSizeMM'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'date_stamp_properties' => :'DateStampProperties',
        :'disallow_user_resize_stamp' => :'String',
        :'external_id' => :'String',
        :'image_type' => :'String',
        :'is_default' => :'String',
        :'nrds_id' => :'String',
        :'nrds_last_name' => :'String',
        :'phonetic_name' => :'String',
        :'signature_font' => :'String',
        :'signature_groups' => :'Array<SignatureGroupDef>',
        :'signature_id' => :'String',
        :'signature_initials' => :'String',
        :'signature_name' => :'String',
        :'signature_users' => :'Array<SignatureUserDef>',
        :'stamp_format' => :'String',
        :'stamp_size_mm' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'dateStampProperties')
        self.date_stamp_properties = attributes[:'dateStampProperties']
      end

      if attributes.has_key?(:'disallowUserResizeStamp')
        self.disallow_user_resize_stamp = attributes[:'disallowUserResizeStamp']
      end

      if attributes.has_key?(:'externalID')
        self.external_id = attributes[:'externalID']
      end

      if attributes.has_key?(:'imageType')
        self.image_type = attributes[:'imageType']
      end

      if attributes.has_key?(:'isDefault')
        self.is_default = attributes[:'isDefault']
      end

      if attributes.has_key?(:'nrdsId')
        self.nrds_id = attributes[:'nrdsId']
      end

      if attributes.has_key?(:'nrdsLastName')
        self.nrds_last_name = attributes[:'nrdsLastName']
      end

      if attributes.has_key?(:'phoneticName')
        self.phonetic_name = attributes[:'phoneticName']
      end

      if attributes.has_key?(:'signatureFont')
        self.signature_font = attributes[:'signatureFont']
      end

      if attributes.has_key?(:'signatureGroups')
        if (value = attributes[:'signatureGroups']).is_a?(Array)
          self.signature_groups = value
        end
      end

      if attributes.has_key?(:'signatureId')
        self.signature_id = attributes[:'signatureId']
      end

      if attributes.has_key?(:'signatureInitials')
        self.signature_initials = attributes[:'signatureInitials']
      end

      if attributes.has_key?(:'signatureName')
        self.signature_name = attributes[:'signatureName']
      end

      if attributes.has_key?(:'signatureUsers')
        if (value = attributes[:'signatureUsers']).is_a?(Array)
          self.signature_users = value
        end
      end

      if attributes.has_key?(:'stampFormat')
        self.stamp_format = attributes[:'stampFormat']
      end

      if attributes.has_key?(:'stampSizeMM')
        self.stamp_size_mm = attributes[:'stampSizeMM']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_stamp_properties == o.date_stamp_properties &&
          disallow_user_resize_stamp == o.disallow_user_resize_stamp &&
          external_id == o.external_id &&
          image_type == o.image_type &&
          is_default == o.is_default &&
          nrds_id == o.nrds_id &&
          nrds_last_name == o.nrds_last_name &&
          phonetic_name == o.phonetic_name &&
          signature_font == o.signature_font &&
          signature_groups == o.signature_groups &&
          signature_id == o.signature_id &&
          signature_initials == o.signature_initials &&
          signature_name == o.signature_name &&
          signature_users == o.signature_users &&
          stamp_format == o.stamp_format &&
          stamp_size_mm == o.stamp_size_mm
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [date_stamp_properties, disallow_user_resize_stamp, external_id, image_type, is_default, nrds_id, nrds_last_name, phonetic_name, signature_font, signature_groups, signature_id, signature_initials, signature_name, signature_users, stamp_format, stamp_size_mm].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
        DateTime.parse(value)
      when :Date
        Date.parse(value)
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
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
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
