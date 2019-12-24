require 'rest-client'
require 'minitest'
require 'json'


class ApiTest


  attr_accessor :response
  def initialize
    puts "Sending request"
  end

  def send_request_get url
    @response = RestClient.get(url)
  end

  def send_request_post url
    payload = {
                "body": "Aqui el comentario"
              }
    @response = RestClient.post(url, payload)
  end

  def valid_code
    response.code
  end

  def valid_body_json
    response.body
  end

  def state_ok
    response.net_http_res.code
  end

  def time_respose
    response.duration
  end

  def state_method_post
    response
  end

end