require "net/http"
require "net/https"
require "json"

module ProcessOut
  class Request
    def initialize(client)
      @client = client
    end

    # ApplyHeaders applies the pre-defined headers to the request
    def apply_headers(req, options)
      req.basic_auth @client.project_id, @client.project_secret
      req.content_type = "application/json"
      req["API-Version"] = "1.3.0.0"
      req["User-Agent"] = "utf-8"

      unless options.nil?
        req["Idempotency-Key"] = options.fetch(:idempotency_key, "")
        req["Disable-Logging"] = options.fetch(:disable_logging, "")
      end
    end
    protected :apply_headers

    # ComputeData computes the data to be sent in the request
    def compute_data(data, options)
      unless options.nil?
        data["expand"] = options.fetch(:expand, "")
        data["filter"] = options.fetch(:filter, "")
        data["limit"] = options.fetch(:limit, "")
        data["page"] = options.fetch(:page, "")
        data["end_before"] = options.fetch(:end_before, "")
        data["start_after"] = options.fetch(:start_after, "")
      end
      data
    end
    protected :compute_data

    # GET sends a get request to the API
    def get(path, data, options) 
      uri = URI(@client.host + path)
      uri.query = URI.encode_www_form(self.compute_data(data, options))
      req = Net::HTTP::Get.new(uri)
      self.apply_headers(req, options)

      Net::HTTP.start(uri.hostname, uri.port,
        :use_ssl => true) do |http|

        http.request(req)
      end
    end

    # POST sends a post request to the API
    def post(path, data, options) 
      uri = URI(@client.host + path)
      req = Net::HTTP::Post.new(uri)
      req.body = data.to_json
      self.apply_headers(req, options)

      Net::HTTP.start(uri.hostname, uri.port,
        :use_ssl => true) do |http|

        http.request(req)
      end
    end

    # PUT sends a put request to the API
    def put(path, data, options) 
      uri = URI(@client.host + path)
      req = Net::HTTP::Put.new(uri)
      req.body = data.to_json
      self.apply_headers(req, options)

      Net::HTTP.start(uri.hostname, uri.port,
        :use_ssl => true) do |http|

        http.request(req)
      end
    end

    # DELETE sends a delete request to the API
    def delete(path, data, options) 
      uri = URI(@client.host + path)
      req = Net::HTTP::Delete.new(uri)
      req.body = data.to_json
      self.apply_headers(req, options)

      Net::HTTP.start(uri.hostname, uri.port,
        :use_ssl => true) do |http|

        http.request(req)
      end
    end
  end
end