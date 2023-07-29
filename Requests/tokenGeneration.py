import requests
import pprint
from requests.auth import HTTPBasicAuth
from Credentials.configurations import *

config = configparser.ConfigParser()
config.read('Credentials/properties.ini')

response = requests.get('http://192.168.1.220:8080/api/auth/token',
                        auth=HTTPBasicAuth('tester2022', password()))
token = (response.json().get('token'))
pprint.pprint(token)




