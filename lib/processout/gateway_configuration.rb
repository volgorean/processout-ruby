# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class GatewayConfiguration
    
    attr_reader :id
    attr_reader :project
    attr_reader :gateway
    attr_reader :enabled
    attr_reader :public_keys

    
    def id=(val)
      @id = val
    end
    
    def project=(val)
      if val.instance_of? Project
        @project = val
      else
        obj = Project.new(@client)
        obj.fill_with_data(val)
        @project = obj
      end
      
    end
    
    def gateway=(val)
      if val.instance_of? Gateway
        @gateway = val
      else
        obj = Gateway.new(@client)
        obj.fill_with_data(val)
        @gateway = obj
      end
      
    end
    
    def enabled=(val)
      @enabled = val
    end
    
    def public_keys=(val)
      @public_keys = val
    end
    

    # Initializes the GatewayConfiguration object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.gateway = data.fetch(:gateway, nil)
      self.enabled = data.fetch(:enabled, nil)
      self.public_keys = data.fetch(:public_keys, nil)
      
    end

    # Create a new GatewayConfiguration using the current client
    def new(data = {})
      GatewayConfiguration.new(@client, data)
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.nil?
        return self
      end
      if data.include? "id"
        self.id = data["id"]
      end
      if data.include? "project"
        self.project = data["project"]
      end
      if data.include? "gateway"
        self.gateway = data["gateway"]
      end
      if data.include? "enabled"
        self.enabled = data["enabled"]
      end
      if data.include? "public_keys"
        self.public_keys = data["public_keys"]
      end
      
      self
    end

    # Prefills the object with the data passed as Parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.id = data.fetch(:id, self.id)
      self.project = data.fetch(:project, self.project)
      self.gateway = data.fetch(:gateway, self.gateway)
      self.enabled = data.fetch(:enabled, self.enabled)
      self.public_keys = data.fetch(:public_keys, self.public_keys)
      
      self
    end

    
  end
end
