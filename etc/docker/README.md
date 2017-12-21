Start the Database
$ docker run --name some-mongo -d mongo --auth
Add the Initial Admin User
$ docker exec -it some-mongo mongo admin
connecting to: admin

db.createUser({ user: 'dm', pwd: 'Dev.2017', roles: [ { role: "userAdminAnyDatabase", db: "admin" } ] });



for loopback

npm install -g loopback-cli

