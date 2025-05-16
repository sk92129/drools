curl --location 'http://localhost:8080/business-central/rest/server/containers/instances/kang.kangcourt:traffic-violation:1.0.0-SNAPSHOT' \
--header 'Content-Type: application/json' \
--header 'Accept: application/json' \
--header 'X-KIE-ContentType: JSON' \
-u admin:admin \
--data '{
  "lookup": "defaultKieSession",
  "commands": [
    {
      "insert": {
        "object": {
          "com.myspace.trafficviolation.Driver": { 
            "name": "John Doe",
            "age": 30,
            "licenseNumber": "XYZ123"
          }
        },
        "out-identifier": "driver" 
      }
    },
    {
      "insert": {
        "object": {
          "com.myspace.trafficviolation.Violation": { 
            "type": "Speeding",
            "fineAmount": 150.00,
            "points": 3
          }
        },
        "out-identifier": "violation"
      }
    },
    {
      "fire-all-rules": {}
    },
    { 
      "query": {
        "out-identifier": "results", 
        "name": "getViolations" 
      }
    }
  ]
}'