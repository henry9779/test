#爬蟲
#常用 JSON, CSV, XML

require 'net/http'
require 'json'

url = 'https://data.coa.gov.tw/Service/OpenData/TransService.aspx?UnitId=fNT9RMo8PQRO' #指定資料來源

uri = URI(url) #抓資料

raw_data = Net::HTTP.get(uri)
items = JSON.parse(raw_data)
items.each do |item|
  p item["legalname"]
end