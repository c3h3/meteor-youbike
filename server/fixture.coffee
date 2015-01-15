
if Youbike.find().count() is 0
  

  HTTP.get "http://opendata.dot.taipei.gov.tw/opendata/gwjs_cityhall.json", (err, res) ->
    monitorAt = new Date 
    for data in res.data.retVal
      data.monitorAt = monitorAt
      Youbike.insert data



  