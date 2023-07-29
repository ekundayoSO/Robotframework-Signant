import requests
import pprint
from Credentials.configurations import *

config = configparser.ConfigParser()
config.read('Credentials/properties.ini')

response = requests.get('http://192.168.1.220:8080/api/users/tester2022',
                        headers={"Content-Type": "application/json", 'Token': token})
pprint.pprint(response.json())
print(response.status_code)
