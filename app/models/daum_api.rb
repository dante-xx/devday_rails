require 'json'

class DaumAPI
  HOST = 'apis.daum.net'
  APIKEY = '915fe3ca3bb5045cb67db7597571303819184e4c'
  
  def self.get_json(path, q)
    Net::HTTP.start(HOST) do |http|
      r = http.get("#{path}?apikey=#{APIKEY}&q=#{URI.encode(q)}&output=json")
      JSON.parse(r.body)['channel']
    end
  end
end
