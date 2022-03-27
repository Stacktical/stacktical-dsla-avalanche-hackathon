curl -o /dev/null -s -w "@format-x.txt" -X POST --data '{
  "jsonrpc":"2.0",
  "id"     : 1,
  "method" :"platform.getBalance",
  "params" :{
      "address":"X-avax1k276wp8jdu79jakxfjkefhx3m424q20pp5gfka"
  }
}' -H 'content-type:application/json;' https://rpc.ankr.com/avalanche-x | curl --data-binary @- http://localhost:9091/metrics/job/job

curl -o /dev/null -s -w "@format-p.txt" -X POST --data '{
  "jsonrpc":"2.0",
  "id"     : 1,
  "method" :"platform.getBalance",
  "params" :{
      "address":"P-avax1fmlnu36mmxxweyn2zsdrhqpf42puqz97gwsaw3"
  }
}' -H 'content-type:application/json;' https://rpc.ankr.com/avalanche-p | curl --data-binary @- http://localhost:9091/metrics/job/job

curl -o /dev/null -s -w "@format-c.txt" -X POST --data '{
    "jsonrpc": "2.0",
    "method": "eth_getAssetBalance",
    "params": [
        "0x8723e5773847A4Eb5FeEDabD9320802c5c812F46",
        "latest",
        "3RvKBAmQnfYionFXMfW5P8TDZgZiogKbHjM8cjpu16LKAgF5T"
    ],
    "id": 1
}' -H 'content-type:application/json;' https://rpc.ankr.com/avalanche-c | curl --data-binary @- http://localhost:9091/metrics/job/job

