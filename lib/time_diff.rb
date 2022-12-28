require 'date'
require 'json'
require 'net/http'

class TimeError
  # Returns difference in seconds between server time
  # and the time on this computer
  def initialize(requestor, time)
    @requestor = requestor
    @time = time
  end

  def error
    return get_server_time - @time.now
  end

  private

  def get_server_time
    text_response = @requestor.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end