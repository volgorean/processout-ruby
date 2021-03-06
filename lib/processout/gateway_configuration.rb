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
    def initialize(client)
      @client = client

      @id = ""
      @project = nil
      @gateway = nil
      @enabled = false
      @public_keys = Hash.new
      
    end

    # Fills the object with data coming from the API
    # Params:
    # +data+:: +Hash+ of data coming from the API
    def fill_with_data(data)
      if data.include? "id"
        @id = data["id"]
      end
      if data.include? "project"
        @project = data["project"]
      end
      if data.include? "gateway"
        @gateway = data["gateway"]
      end
      if data.include? "enabled"
        @enabled = data["enabled"]
      end
      if data.include? "public_keys"
        @public_keys = data["public_keys"]
      end
      
      self
    end

    
  end
end
