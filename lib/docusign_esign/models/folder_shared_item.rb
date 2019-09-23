=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class FolderSharedItem
    attr_accessor :error_details

    # 
    attr_accessor :folder_id

    # 
    attr_accessor :name

    attr_accessor :owner

    # 
    attr_accessor :parent_folder_id

    # 
    attr_accessor :parent_folder_uri

    # When set to **true**, this custom tab is shared.
    attr_accessor :shared

    # 
    attr_accessor :shared_groups

    # 
    attr_accessor :shared_users

    # 
    attr_accessor :uri

    attr_accessor :user


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'error_details' => :'errorDetails',
        :'folder_id' => :'folderId',
        :'name' => :'name',
        :'owner' => :'owner',
        :'parent_folder_id' => :'parentFolderId',
        :'parent_folder_uri' => :'parentFolderUri',
        :'shared' => :'shared',
        :'shared_groups' => :'sharedGroups',
        :'shared_users' => :'sharedUsers',
        :'uri' => :'uri',
        :'user' => :'user'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'error_details' => :'ErrorDetails',
        :'folder_id' => :'String',
        :'name' => :'String',
        :'owner' => :'UserInfo',
        :'parent_folder_id' => :'String',
        :'parent_folder_uri' => :'String',
        :'shared' => :'String',
        :'shared_groups' => :'Array<MemberGroupSharedItem>',
        :'shared_users' => :'Array<UserSharedItem>',
        :'uri' => :'String',
        :'user' => :'UserInfo'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'errorDetails')
        self.error_details = attributes[:'errorDetails']
      end

      if attributes.has_key?(:'folderId')
        self.folder_id = attributes[:'folderId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'owner')
        self.owner = attributes[:'owner']
      end

      if attributes.has_key?(:'parentFolderId')
        self.parent_folder_id = attributes[:'parentFolderId']
      end

      if attributes.has_key?(:'parentFolderUri')
        self.parent_folder_uri = attributes[:'parentFolderUri']
      end

      if attributes.has_key?(:'shared')
        self.shared = attributes[:'shared']
      end

      if attributes.has_key?(:'sharedGroups')
        if (value = attributes[:'sharedGroups']).is_a?(Array)
          self.shared_groups = value
        end
      end

      if attributes.has_key?(:'sharedUsers')
        if (value = attributes[:'sharedUsers']).is_a?(Array)
          self.shared_users = value
        end
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          error_details == o.error_details &&
          folder_id == o.folder_id &&
          name == o.name &&
          owner == o.owner &&
          parent_folder_id == o.parent_folder_id &&
          parent_folder_uri == o.parent_folder_uri &&
          shared == o.shared &&
          shared_groups == o.shared_groups &&
          shared_users == o.shared_users &&
          uri == o.uri &&
          user == o.user
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [error_details, folder_id, name, owner, parent_folder_id, parent_folder_uri, shared, shared_groups, shared_users, uri, user].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        value.compact.map{ |v| _to_hash(v) }
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
