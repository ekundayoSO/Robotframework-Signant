import pprint
import requests
from Credentials.configurations import *

config = configparser.ConfigParser()
config.read('Credentials/properties.ini')


response = requests.put('http://192.168.1.220:8080/api/users/tester205', json={'firstname': 'Benedict'},
                        headers={"Content-Type": "application/json", 'Token': token})
pprint.pprint(response.json())
print(response.status_code)