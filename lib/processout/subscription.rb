# The content of this file was automatically generated

require "cgi"
require "processout/networking/request"
require "processout/networking/response"

module ProcessOut
  class Subscription
    
    attr_reader :id
    attr_reader :project
    attr_reader :plan_id
    attr_reader :plan
    attr_reader :customer
    attr_reader :token
    attr_reader :url
    attr_reader :name
    attr_reader :amount
    attr_reader :currency
    attr_reader :metadata
    attr_reader :interval
    attr_reader :trial_end_at
    attr_reader :activated
    attr_reader :active
    attr_reader :canceled
    attr_reader :cancellation_reason
    attr_reader :pending_cancellation
    attr_reader :cancel_at
    attr_reader :return_url
    attr_reader :cancel_url
    attr_reader :sandbox
    attr_reader :created_at
    attr_reader :activated_at
    attr_reader :iterate_at
    attr_accessor :coupon_id
    attr_accessor :source_id
    attr_accessor :prorate
    attr_accessor :proration_date

    
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
    
    def plan_id=(val)
      @plan_id = val
    end
    
    def plan=(val)
      if val.instance_of? Plan
        @plan = val
      else
        obj = Plan.new(@client)
        obj.fill_with_data(val)
        @plan = obj
      end
      
    end
    
    def customer=(val)
      if val.instance_of? Customer
        @customer = val
      else
        obj = Customer.new(@client)
        obj.fill_with_data(val)
        @customer = obj
      end
      
    end
    
    def token=(val)
      if val.instance_of? Token
        @token = val
      else
        obj = Token.new(@client)
        obj.fill_with_data(val)
        @token = obj
      end
      
    end
    
    def url=(val)
      @url = val
    end
    
    def name=(val)
      @name = val
    end
    
    def amount=(val)
      @amount = val
    end
    
    def currency=(val)
      @currency = val
    end
    
    def metadata=(val)
      @metadata = val
    end
    
    def interval=(val)
      @interval = val
    end
    
    def trial_end_at=(val)
      @trial_end_at = val
    end
    
    def activated=(val)
      @activated = val
    end
    
    def active=(val)
      @active = val
    end
    
    def canceled=(val)
      @canceled = val
    end
    
    def cancellation_reason=(val)
      @cancellation_reason = val
    end
    
    def pending_cancellation=(val)
      @pending_cancellation = val
    end
    
    def cancel_at=(val)
      @cancel_at = val
    end
    
    def return_url=(val)
      @return_url = val
    end
    
    def cancel_url=(val)
      @cancel_url = val
    end
    
    def sandbox=(val)
      @sandbox = val
    end
    
    def created_at=(val)
      @created_at = val
    end
    
    def activated_at=(val)
      @activated_at = val
    end
    
    def iterate_at=(val)
      @iterate_at = val
    end
    

    # Initializes the Subscription object
    # Params:
    # +client+:: +ProcessOut+ client instance
    # +data+:: data that can be used to fill the object
    def initialize(client, data = {})
      @client = client

      self.id = data.fetch(:id, nil)
      self.project = data.fetch(:project, nil)
      self.plan_id = data.fetch(:plan_id, nil)
      self.plan = data.fetch(:plan, nil)
      self.customer = data.fetch(:customer, nil)
      self.token = data.fetch(:token, nil)
      self.url = data.fetch(:url, nil)
      self.name = data.fetch(:name, nil)
      self.amount = data.fetch(:amount, nil)
      self.currency = data.fetch(:currency, nil)
      self.metadata = data.fetch(:metadata, nil)
      self.interval = data.fetch(:interval, nil)
      self.trial_end_at = data.fetch(:trial_end_at, nil)
      self.activated = data.fetch(:activated, nil)
      self.active = data.fetch(:active, nil)
      self.canceled = data.fetch(:canceled, nil)
      self.cancellation_reason = data.fetch(:cancellation_reason, nil)
      self.pending_cancellation = data.fetch(:pending_cancellation, nil)
      self.cancel_at = data.fetch(:cancel_at, nil)
      self.return_url = data.fetch(:return_url, nil)
      self.cancel_url = data.fetch(:cancel_url, nil)
      self.sandbox = data.fetch(:sandbox, nil)
      self.created_at = data.fetch(:created_at, nil)
      self.activated_at = data.fetch(:activated_at, nil)
      self.iterate_at = data.fetch(:iterate_at, nil)
      self.coupon_id = nil
      self.source_id = nil
      self.prorate = nil
      self.proration_date = nil
      
    end

    # Create a new Subscription using the current client
    def new(data = {})
      Subscription.new(@client, data)
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
      if data.include? "plan_id"
        self.plan_id = data["plan_id"]
      end
      if data.include? "plan"
        self.plan = data["plan"]
      end
      if data.include? "customer"
        self.customer = data["customer"]
      end
      if data.include? "token"
        self.token = data["token"]
      end
      if data.include? "url"
        self.url = data["url"]
      end
      if data.include? "name"
        self.name = data["name"]
      end
      if data.include? "amount"
        self.amount = data["amount"]
      end
      if data.include? "currency"
        self.currency = data["currency"]
      end
      if data.include? "metadata"
        self.metadata = data["metadata"]
      end
      if data.include? "interval"
        self.interval = data["interval"]
      end
      if data.include? "trial_end_at"
        self.trial_end_at = data["trial_end_at"]
      end
      if data.include? "activated"
        self.activated = data["activated"]
      end
      if data.include? "active"
        self.active = data["active"]
      end
      if data.include? "canceled"
        self.canceled = data["canceled"]
      end
      if data.include? "cancellation_reason"
        self.cancellation_reason = data["cancellation_reason"]
      end
      if data.include? "pending_cancellation"
        self.pending_cancellation = data["pending_cancellation"]
      end
      if data.include? "cancel_at"
        self.cancel_at = data["cancel_at"]
      end
      if data.include? "return_url"
        self.return_url = data["return_url"]
      end
      if data.include? "cancel_url"
        self.cancel_url = data["cancel_url"]
      end
      if data.include? "sandbox"
        self.sandbox = data["sandbox"]
      end
      if data.include? "created_at"
        self.created_at = data["created_at"]
      end
      if data.include? "activated_at"
        self.activated_at = data["activated_at"]
      end
      if data.include? "iterate_at"
        self.iterate_at = data["iterate_at"]
      end
      
      self
    end

    # Prefills the object with the data passed as parameters
    # Params:
    # +data+:: +Hash+ of data
    def prefill(data)
      if data.nil?
        return self
      end
      self.id = data.fetch(:id, self.id)
      self.project = data.fetch(:project, self.project)
      self.plan_id = data.fetch(:plan_id, self.plan_id)
      self.plan = data.fetch(:plan, self.plan)
      self.customer = data.fetch(:customer, self.customer)
      self.token = data.fetch(:token, self.token)
      self.url = data.fetch(:url, self.url)
      self.name = data.fetch(:name, self.name)
      self.amount = data.fetch(:amount, self.amount)
      self.currency = data.fetch(:currency, self.currency)
      self.metadata = data.fetch(:metadata, self.metadata)
      self.interval = data.fetch(:interval, self.interval)
      self.trial_end_at = data.fetch(:trial_end_at, self.trial_end_at)
      self.activated = data.fetch(:activated, self.activated)
      self.active = data.fetch(:active, self.active)
      self.canceled = data.fetch(:canceled, self.canceled)
      self.cancellation_reason = data.fetch(:cancellation_reason, self.cancellation_reason)
      self.pending_cancellation = data.fetch(:pending_cancellation, self.pending_cancellation)
      self.cancel_at = data.fetch(:cancel_at, self.cancel_at)
      self.return_url = data.fetch(:return_url, self.return_url)
      self.cancel_url = data.fetch(:cancel_url, self.cancel_url)
      self.sandbox = data.fetch(:sandbox, self.sandbox)
      self.created_at = data.fetch(:created_at, self.created_at)
      self.activated_at = data.fetch(:activated_at, self.activated_at)
      self.iterate_at = data.fetch(:iterate_at, self.iterate_at)
      
      self
    end

    # Get the customer owning the subscription.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_customer(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/customers"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["customer"]
      customer = Customer.new(@client)
      return_values.push(customer.fill_with_data(body))

      
      return_values[0]
    end

    # Get the discounts applied to the subscription.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_discounts(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['discounts']
        tmp = Discount.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Apply a coupon on the subscription.
    # Params:
    # +coupon_id+:: ID of the coupon
    # +options+:: +Hash+ of options
    def apply_coupon(coupon_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts"
      data    = {
        "coupon_id" => coupon_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      discount = Discount.new(@client)
      return_values.push(discount.fill_with_data(body))

      
      return_values[0]
    end

    # Find a subscription's discount by its ID.
    # Params:
    # +discount_id+:: ID of the discount
    # +options+:: +Hash+ of options
    def find_discount(discount_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts/" + CGI.escape(discount_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      discount = Discount.new(@client)
      return_values.push(discount.fill_with_data(body))

      
      return_values[0]
    end

    # Remove a discount applied to a subscription.
    # Params:
    # +discount_id+:: ID of the discount or coupon to be removed from the subscription
    # +options+:: +Hash+ of options
    def remove_discount(discount_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/discounts/" + CGI.escape(discount_id) + ""
      data    = {

      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["discount"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Get the subscriptions past transactions.
    # Params:
    # +options+:: +Hash+ of options
    def fetch_transactions(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + "/transactions"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['transactions']
        tmp = Transaction.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Get all the subscriptions.
    # Params:
    # +options+:: +Hash+ of options
    def all(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions"
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      a    = Array.new
      body = response.body
      for v in body['subscriptions']
        tmp = Subscription.new(@client)
        tmp.fill_with_data(v)
        a.push(tmp)
      end

      return_values.push(a)
      

      
      return_values[0]
    end

    # Create a new subscription for the given customer.
    # Params:
    # +customer_id+:: ID of the customer
    # +options+:: +Hash+ of options
    def create(customer_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions"
      data    = {
        "plan_id" => @plan_id, 
        "cancel_at" => @cancel_at, 
        "name" => @name, 
        "amount" => @amount, 
        "currency" => @currency, 
        "metadata" => @metadata, 
        "interval" => @interval, 
        "trial_end_at" => @trial_end_at, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url, 
        "source" => options.fetch(:source, nil), 
        "prorate" => options.fetch(:prorate, nil), 
        "customer_id" => customer_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Create a new subscription for the customer from the given plan ID.
    # Params:
    # +customer_id+:: ID of the customer
    # +plan_id+:: ID of the plan
    # +options+:: +Hash+ of options
    def create_from_plan(customer_id, plan_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions"
      data    = {
        "cancel_at" => @cancel_at, 
        "name" => @name, 
        "amount" => @amount, 
        "currency" => @currency, 
        "metadata" => @metadata, 
        "interval" => @interval, 
        "trial_end_at" => @trial_end_at, 
        "return_url" => @return_url, 
        "cancel_url" => @cancel_url, 
        "source" => options.fetch(:source, nil), 
        "customer_id" => customer_id, 
        "plan_id" => plan_id
      }

      response = Response.new(request.post(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Find a subscription by its ID.
    # Params:
    # +subscription_id+:: ID of the subscription
    # +options+:: +Hash+ of options
    def find(subscription_id, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(subscription_id) + ""
      data    = {

      }

      response = Response.new(request.get(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      obj = Subscription.new(@client)
      return_values.push(obj.fill_with_data(body))
      

      
      return_values[0]
    end

    # Save the updated subscription attributes.
    # Params:
    # +options+:: +Hash+ of options
    def save(options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        "plan_id" => @plan_id, 
        "name" => @name, 
        "amount" => @amount, 
        "interval" => @interval, 
        "trial_end_at" => @trial_end_at, 
        "metadata" => @metadata, 
        "coupon_id" => options.fetch(:coupon_id, @coupon_id), 
        "source" => options.fetch(:source, @source_id), 
        "prorate" => options.fetch(:prorate, @prorate), 
        "proration_date" => options.fetch(:proration_date, @proration_date)
      }

      response = Response.new(request.put(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Cancel a subscription. The reason may be provided as well.
    # Params:
    # +cancellation_reason+:: Cancellation reason
    # +options+:: +Hash+ of options
    def cancel(cancellation_reason, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        "cancellation_reason" => cancellation_reason
      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    # Schedule the cancellation of the subscription. The reason may be provided as well.
    # Params:
    # +cancel_at+:: Cancellation date, in the form of a string
    # +cancellation_reason+:: Cancellation reason
    # +options+:: +Hash+ of options
    def cancel_at_date(cancel_at, cancellation_reason, options = {})
      self.prefill(options)

      request = Request.new(@client)
      path    = "/subscriptions/" + CGI.escape(@id) + ""
      data    = {
        "cancel_at_end" => options.fetch(:cancel_at_end, nil), 
        "cancel_at" => cancel_at, 
        "cancellation_reason" => cancellation_reason
      }

      response = Response.new(request.delete(path, data, options))
      return_values = Array.new
      
      body = response.body
      body = body["subscription"]
      
      
      return_values.push(self.fill_with_data(body))
      

      
      return_values[0]
    end

    
  end
end
