require 'time_diff'
require 'date'

RSpec.describe TimeError do
    it "returns the error in the time of the server" do
        real_time_dbl = double(:time, now: DateTime.parse('2022-12-27T20:54:29.507928+00:00').to_time)
        server_time_dbl = double(:requestor)
        allow(server_time_dbl).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"GMT","client_ip":"80.6.241.107","datetime":"2022-12-27T20:54:28.507928+00:00","day_of_week":2,"day_of_year":361,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1672174468,"utc_datetime":"2022-12-27T20:54:28.507928+00:00","utc_offset":"+00:00","week_number":52}') 
        time_error = TimeError.new(server_time_dbl, real_time_dbl)
        result = time_error.error
        expect(result).to eq -1.0
    end
end