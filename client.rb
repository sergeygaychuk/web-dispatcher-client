require "rest-client"

while true do
  rand = Random.new
  type = rand.rand(2)
  p type
  response = RestClient.post 'http://localhost:3000/status/create',
                            status: {
                              object: "Toksovo",
                              system: 'Electricity',
                              process: 'OTP_control',
                              current: rand.rand(1000),
                              description: 'Hello world',
                              status_type: type
                            }
  p response
  sleep 30
end

