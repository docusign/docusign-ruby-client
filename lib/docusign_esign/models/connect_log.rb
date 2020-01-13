=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class ConnectLog
    # The account ID associated with the envelope.
    attr_accessor :account_id

    # The web address of the listener or Retrieving Service end point for Connect.
    attr_accessor :config_url

    # A complex element containing information about the Connect configuration, error details, date/time, description and payload.  This is only included in the response if the query additional_info=true is used.
    attr_accessor :connect_debug_log

    # The identifier for the Connect configuration that failed. If an account has multiple Connect configurations, this value is used to look up the Connect configuration for the failed post.
    attr_accessor :connect_id

    # The date and time the entry was created.
    attr_accessor :created

    # The email that sent the envelope.
    attr_accessor :email

    # The envelope ID of the envelope status that failed to post.
    attr_accessor :envelope_id

    # The error that caused the Connect post to fail.
    attr_accessor :error

    # The failure log ID for the failure.
    attr_accessor :failure_id

    # The URI for the failure.
    attr_accessor :failure_uri

    # The date and time the last attempt to post.
    attr_accessor :last_try

    # The Connect log ID for the entry.
    attr_accessor :log_id

    # The URI for the log item.
    attr_accessor :log_uri

    # The number of times the Connect post has been retried.
    attr_accessor :retry_count

    # The UEI to retry to publish the Connect failure.
    attr_accessor :retry_uri

    # The new envelope status for the failed Connect post. The possible values are: Any, Voided, Created, Deleted, Sent, Delivered, Signed, Completed, Declined, TimedOut, Template, or Processing.
    attr_accessor :status

    # The envelope subject.
    attr_accessor :subject

    # The name of the envelope sender.
    attr_accessor :user_name


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id' => :'accountId',
        :'config_url' => :'configUrl',
        :'connect_debug_log' => :'connectDebugLog',
        :'connect_id' => :'connectId',
        :'created' => :'created',
        :'email' => :'email',
        :'envelope_id' => :'envelopeId',
        :'error' => :'error',
        :'failure_id' => :'failureId',
        :'failure_uri' => :'failureUri',
        :'last_try' => :'lastTry',
        :'log_id' => :'logId',
        :'log_uri' => :'logUri',
        :'retry_count' => :'retryCount',
        :'retry_uri' => :'retryUri',
        :'status' => :'status',
        :'subject' => :'subject',
        :'user_name' => :'userName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id' => :'String',
        :'config_url' => :'String',
        :'connect_debug_log' => :'Array<ConnectDebugLog>',
        :'connect_id' => :'String',
        :'created' => :'String',
        :'email' => :'String',
        :'envelope_id' => :'String',
        :'error' => :'String',
        :'failure_id' => :'String',
        :'failure_uri' => :'String',
        :'last_try' => :'String',
        :'log_id' => :'String',
        :'log_uri' => :'String',
        :'retry_count' => :'String',
        :'retry_uri' => :'String',
        :'status' => :'String',
        :'subject' => :'String',
        :'user_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'accountId')
        self.account_id = attributes[:'accountId']
      end

      if attributes.has_key?(:'configUrl')
        self.config_url = attributes[:'configUrl']
      end

      if attributes.has_key?(:'connectDebugLog')
        if (value = attributes[:'connectDebugLog']).is_a?(Array)
          self.connect_debug_log = value
        end
      end

      if attributes.has_key?(:'connectId')
        self.connect_id = attributes[:'connectId']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'envelopeId')
        self.envelope_id = attributes[:'envelopeId']
      end

      if attributes.has_key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.has_key?(:'failureId')
        self.failure_id = attributes[:'failureId']
      end

      if attributes.has_key?(:'failureUri')
        self.failure_uri = attributes[:'failureUri']
      end

      if attributes.has_key?(:'lastTry')
        self.last_try = attributes[:'lastTry']
      end

      if attributes.has_key?(:'logId')
        self.log_id = attributes[:'logId']
      end

      if attributes.has_key?(:'logUri')
        self.log_uri = attributes[:'logUri']
      end

      if attributes.has_key?(:'retryCount')
        self.retry_count = attributes[:'retryCount']
      end

      if attributes.has_key?(:'retryUri')
        self.retry_uri = attributes[:'retryUri']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.has_key?(:'userName')
        self.user_name = attributes[:'userName']
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
          account_id == o.account_id &&
          config_url == o.config_url &&
          connect_debug_log == o.connect_debug_log &&
          connect_id == o.connect_id &&
          created == o.created &&
          email == o.email &&
          envelope_id == o.envelope_id &&
          error == o.error &&
          failure_id == o.failure_id &&
          failure_uri == o.failure_uri &&
          last_try == o.last_try &&
          log_id == o.log_id &&
          log_uri == o.log_uri &&
          retry_count == o.retry_count &&
          retry_uri == o.retry_uri &&
          status == o.status &&
          subject == o.subject &&
          user_name == o.user_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id, config_url, connect_debug_log, connect_id, created, email, envelope_id, error, failure_id, failure_uri, last_try, log_id, log_uri, retry_count, retry_uri, status, subject, user_name].hash
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
