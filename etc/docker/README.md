### Start the Database
docker run -d -i -t --name dc-mongo-1  -h dc-mongo-1 \
  --net dc-net \
  -p 27017:27017 \
  -v $(pwd)/../../../data:/app \
  mongo --auth --bind_ip 0.0.0.0
  
  create user
  docker exec -i -t dc-mongo-1 mongo admin
 

### crear usuario

### admin
db.createUser({ user: 'admin', pwd: 'Dev.2017', roles: [ { role: "userAdminAnyDatabase", db: "admin" } ] });

### create new database
use dm;

### user
db.createUser({ user: 'dm', pwd: 'Dev.2017', roles: [ { role: "readWrite", db: "dm" } ] });

### login
docker exec -i -t dc-mongo-1 mongo admin -u admin -p Dev.2017


db.produto.insert({"name":"tutorials point"});



login
docker exec -i -t dc-mongo-1 mongo admin -u admin -p Dev.2017

db.createUser({ user: 'dm', pwd: 'Dev.2017', roles: [ { role: "readWrite", db: "dm" } ] });
db.createUser({ user: 'dm2', pwd: 'Dev.2017', roles: [ { role: "readWrite", db: "dm" } ] });

echo "Creating user: \"$USER\"..."
mongo dm --eval "db.createUser({ user: 'dm', pwd: 'Dev.2017', roles: [ { role: 'readWrite'} ] });"

mongo dm --eval "db.createUser({ user: 'dm2', pwd: 'Dev.2017', roles: [ { role: "readWrite", db: "dm" } ] });"


for loopback

npm install -g loopback-cli

