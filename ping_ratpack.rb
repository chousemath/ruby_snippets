require 'net/http'
require 'json'

url = URI.parse('http://ec2-52-79-206-143.ap-northeast-2.compute.amazonaws.com:5050/')
req = Net::HTTP::Get.new(url.to_s)
res = Net::HTTP.start(url.host, url.port) {|http|
  http.request(req)
}
puts res.body

puts "\n\n\n"

uri = URI.parse('http://ec2-52-79-206-143.ap-northeast-2.compute.amazonaws.com:5050/analyze')
header = {'content-type': 'application/json'}
request_body = {
  'm_url': 'https://waggle-images.s3.amazonaws.com/drive_files/attachments/000/001/112/original/bb01dd6113844c1ded1bd5167293133c.stl',
  'm_id': 1112
}
http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri, header)
request.body = request_body.to_json

response = http.request(request)

puts response.body

