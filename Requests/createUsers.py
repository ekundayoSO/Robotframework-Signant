import requests
import pprint

data = [{
    "username": "foden05",
    "password": "Tester@@4040",
    "firstname": "Folly",
    "lastname": "Fella",
    "phone": "000000000"
},
    {
        "username": "goodies19",
        "password": "Tester@@4040",
        "firstname": "Plaza",
        "lastname": "Sun",
        "phone": "000000000"
    },
    {
        "username": "Jandon1",
        "password": "Tester@@4040",
        "firstname": "Victor",
        "lastname": "Malu",
        "phone": "000000000"
    }
]
for x in data:
    response = requests.post("http://192.168.1.220:8080/api/users", json=x,
                             headers={"Content-Type": "application/json"})
    print(response.headers)
    pprint.pprint(response.json())
    statusCode = response.status_code
    print(statusCode)
