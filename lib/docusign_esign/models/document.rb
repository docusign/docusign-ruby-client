=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign

  class Document
    # Reserved: TBD
    attr_accessor :apply_anchor_tabs

    # 
    attr_accessor :display

    # The document's bytes. This field can be used to include a base64 version of the document bytes within an envelope definition instead of sending the document using a multi-part HTTP request. The maximum document size is smaller if this field is used due to the overhead of the base64 encoding.
    attr_accessor :document_base64

    # 
    attr_accessor :document_fields

    # 
    attr_accessor :document_group

    # Specifies the document ID number that the tab is placed on. This must refer to an existing Document's ID attribute.
    attr_accessor :document_id

    # When set to **true**, the document is been already encrypted by the sender for use with the DocuSign Key Manager Security Appliance.  
    attr_accessor :encrypted_with_key_manager

    # The file extension type of the document. If the document is not a PDF it is converted to a PDF.  
    attr_accessor :file_extension

    # 
    attr_accessor :file_format_hint

    attr_accessor :html_definition

    # 
    attr_accessor :include_in_download

    # 
    attr_accessor :is_dynamic_xfa

    # 
    attr_accessor :is_static_xfa

    # Matchboxes define areas in a document for document matching when you are creating envelopes. They are only used when you upload and edit a template.   A matchbox consists of 5 elements:  * pageNumber - The document page number  on which the matchbox will appear.  * xPosition - The x position of the matchbox on a page.  * yPosition - The y position of the matchbox on a page. * width - The width of the matchbox.  * height - The height of the matchbox.  
    attr_accessor :match_boxes

    # 
    attr_accessor :name

    # 
    attr_accessor :ocr_requests

    # 
    attr_accessor :order

    # 
    attr_accessor :page_count

    # 
    attr_accessor :pages

    # 
    attr_accessor :page_sizes

    # 
    attr_accessor :password

    # 
    attr_accessor :pdf_fields_data

    # 
    attr_accessor :pdf_form_field_option

    # 
    attr_accessor :pdf_widgets_base64

    # The file id from the cloud storage service where the document is located. This information is returned using [ML:GET /folders] or [ML:/folders/{folderid}]. 
    attr_accessor :remote_url

    # 
    attr_accessor :signer_must_acknowledge

    attr_accessor :tabs

    # When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients. 
    attr_accessor :template_locked

    # When set to **true**, the sender may not remove the recipient. Used only when working with template recipients.
    attr_accessor :template_required

    # When set to **true**, PDF form field data is transformed into document tab values when the PDF form field name matches the DocuSign custom tab tabLabel. The resulting PDF form data is also returned in the PDF meta data when requesting the document PDF. See the [ML:Transform PDF Fields] section for more information about how fields are transformed into DocuSign tabs. 
    attr_accessor :transform_pdf_fields

    # 
    attr_accessor :uri


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'apply_anchor_tabs' => :'applyAnchorTabs',
        :'display' => :'display',
        :'document_base64' => :'documentBase64',
        :'document_fields' => :'documentFields',
        :'document_group' => :'documentGroup',
        :'document_id' => :'documentId',
        :'encrypted_with_key_manager' => :'encryptedWithKeyManager',
        :'file_extension' => :'fileExtension',
        :'file_format_hint' => :'fileFormatHint',
        :'html_definition' => :'htmlDefinition',
        :'include_in_download' => :'includeInDownload',
        :'is_dynamic_xfa' => :'isDynamicXfa',
        :'is_static_xfa' => :'isStaticXfa',
        :'match_boxes' => :'matchBoxes',
        :'name' => :'name',
        :'ocr_requests' => :'ocrRequests',
        :'order' => :'order',
        :'page_count' => :'pageCount',
        :'pages' => :'pages',
        :'page_sizes' => :'pageSizes',
        :'password' => :'password',
        :'pdf_fields_data' => :'pdfFieldsData',
        :'pdf_form_field_option' => :'pdfFormFieldOption',
        :'pdf_widgets_base64' => :'pdfWidgetsBase64',
        :'remote_url' => :'remoteUrl',
        :'signer_must_acknowledge' => :'signerMustAcknowledge',
        :'tabs' => :'tabs',
        :'template_locked' => :'templateLocked',
        :'template_required' => :'templateRequired',
        :'transform_pdf_fields' => :'transformPdfFields',
        :'uri' => :'uri'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'apply_anchor_tabs' => :'String',
        :'display' => :'String',
        :'document_base64' => :'String',
        :'document_fields' => :'Array<NameValue>',
        :'document_group' => :'String',
        :'document_id' => :'String',
        :'encrypted_with_key_manager' => :'String',
        :'file_extension' => :'String',
        :'file_format_hint' => :'String',
        :'html_definition' => :'DocumentHtmlDefinition',
        :'include_in_download' => :'String',
        :'is_dynamic_xfa' => :'BOOLEAN',
        :'is_static_xfa' => :'BOOLEAN',
        :'match_boxes' => :'Array<MatchBox>',
        :'name' => :'String',
        :'ocr_requests' => :'Array<OcrRequest>',
        :'order' => :'String',
        :'page_count' => :'String',
        :'pages' => :'String',
        :'page_sizes' => :'Array<PageSize>',
        :'password' => :'String',
        :'pdf_fields_data' => :'String',
        :'pdf_form_field_option' => :'String',
        :'pdf_widgets_base64' => :'String',
        :'remote_url' => :'String',
        :'signer_must_acknowledge' => :'String',
        :'tabs' => :'Tabs',
        :'template_locked' => :'String',
        :'template_required' => :'String',
        :'transform_pdf_fields' => :'String',
        :'uri' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'applyAnchorTabs')
        self.apply_anchor_tabs = attributes[:'applyAnchorTabs']
      end

      if attributes.has_key?(:'display')
        self.display = attributes[:'display']
      end

      if attributes.has_key?(:'documentBase64')
        self.document_base64 = attributes[:'documentBase64']
      end

      if attributes.has_key?(:'documentFields')
        if (value = attributes[:'documentFields']).is_a?(Array)
          self.document_fields = value
        end
      end

      if attributes.has_key?(:'documentGroup')
        self.document_group = attributes[:'documentGroup']
      end

      if attributes.has_key?(:'documentId')
        self.document_id = attributes[:'documentId']
      end

      if attributes.has_key?(:'encryptedWithKeyManager')
        self.encrypted_with_key_manager = attributes[:'encryptedWithKeyManager']
      end

      if attributes.has_key?(:'fileExtension')
        self.file_extension = attributes[:'fileExtension']
      end

      if attributes.has_key?(:'fileFormatHint')
        self.file_format_hint = attributes[:'fileFormatHint']
      end

      if attributes.has_key?(:'htmlDefinition')
        self.html_definition = attributes[:'htmlDefinition']
      end

      if attributes.has_key?(:'includeInDownload')
        self.include_in_download = attributes[:'includeInDownload']
      end

      if attributes.has_key?(:'isDynamicXfa')
        self.is_dynamic_xfa = attributes[:'isDynamicXfa']
      end

      if attributes.has_key?(:'isStaticXfa')
        self.is_static_xfa = attributes[:'isStaticXfa']
      end

      if attributes.has_key?(:'matchBoxes')
        if (value = attributes[:'matchBoxes']).is_a?(Array)
          self.match_boxes = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'ocrRequests')
        if (value = attributes[:'ocrRequests']).is_a?(Array)
          self.ocr_requests = value
        end
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'pageCount')
        self.page_count = attributes[:'pageCount']
      end

      if attributes.has_key?(:'pages')
        self.pages = attributes[:'pages']
      end

      if attributes.has_key?(:'pageSizes')
        if (value = attributes[:'pageSizes']).is_a?(Array)
          self.page_sizes = value
        end
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'pdfFieldsData')
        self.pdf_fields_data = attributes[:'pdfFieldsData']
      end

      if attributes.has_key?(:'pdfFormFieldOption')
        self.pdf_form_field_option = attributes[:'pdfFormFieldOption']
      end

      if attributes.has_key?(:'pdfWidgetsBase64')
        self.pdf_widgets_base64 = attributes[:'pdfWidgetsBase64']
      end

      if attributes.has_key?(:'remoteUrl')
        self.remote_url = attributes[:'remoteUrl']
      end

      if attributes.has_key?(:'signerMustAcknowledge')
        self.signer_must_acknowledge = attributes[:'signerMustAcknowledge']
      end

      if attributes.has_key?(:'tabs')
        self.tabs = attributes[:'tabs']
      end

      if attributes.has_key?(:'templateLocked')
        self.template_locked = attributes[:'templateLocked']
      end

      if attributes.has_key?(:'templateRequired')
        self.template_required = attributes[:'templateRequired']
      end

      if attributes.has_key?(:'transformPdfFields')
        self.transform_pdf_fields = attributes[:'transformPdfFields']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
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
          apply_anchor_tabs == o.apply_anchor_tabs &&
          display == o.display &&
          document_base64 == o.document_base64 &&
          document_fields == o.document_fields &&
          document_group == o.document_group &&
          document_id == o.document_id &&
          encrypted_with_key_manager == o.encrypted_with_key_manager &&
          file_extension == o.file_extension &&
          file_format_hint == o.file_format_hint &&
          html_definition == o.html_definition &&
          include_in_download == o.include_in_download &&
          is_dynamic_xfa == o.is_dynamic_xfa &&
          is_static_xfa == o.is_static_xfa &&
          match_boxes == o.match_boxes &&
          name == o.name &&
          ocr_requests == o.ocr_requests &&
          order == o.order &&
          page_count == o.page_count &&
          pages == o.pages &&
          page_sizes == o.page_sizes &&
          password == o.password &&
          pdf_fields_data == o.pdf_fields_data &&
          pdf_form_field_option == o.pdf_form_field_option &&
          pdf_widgets_base64 == o.pdf_widgets_base64 &&
          remote_url == o.remote_url &&
          signer_must_acknowledge == o.signer_must_acknowledge &&
          tabs == o.tabs &&
          template_locked == o.template_locked &&
          template_required == o.template_required &&
          transform_pdf_fields == o.transform_pdf_fields &&
          uri == o.uri
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [apply_anchor_tabs, display, document_base64, document_fields, document_group, document_id, encrypted_with_key_manager, file_extension, file_format_hint, html_definition, include_in_download, is_dynamic_xfa, is_static_xfa, match_boxes, name, ocr_requests, order, page_count, pages, page_sizes, password, pdf_fields_data, pdf_form_field_option, pdf_widgets_base64, remote_url, signer_must_acknowledge, tabs, template_locked, template_required, transform_pdf_fields, uri].hash
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
