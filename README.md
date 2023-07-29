# Signant

Tests Coverage:

A. As a UI user I can:

1. Register through web portal
2. Review my own user information from the main view

As an API Consumer I can:

1. Register new users
2. Review users registered in system
3. If authenticated I can get personal information of users
4. If authenticated I can update personal information of users

Test Result:
https://myresult.surge.sh/log.html

Hope I would be pardoned for using the third party reporting tool. This is just to avoid the unaccessability of my local host at your end.

Note:

1. For the robot tests, you need to request for the username and password for you to run the those tests successfully.
2. Also, the server and the database must be connect to at all time for any executed test to be successful. 
 from command line:
 
 On Windows: UI server
 
   1. set FLASK_APP=demo_app
   2. then flask run
   
On Windows: API database

  1. set FLASK_APP=demo_app
  2. flask init-db
  3. flask run --host=0.0.0.0 --port=8080
