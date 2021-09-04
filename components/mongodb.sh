echo "setting up mongodb repo"

echo '[mongodb-org-4.2]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/4.2/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-4.2.asc' >/etc/yum.repos.d/mongodb.repo

#Install Mongo & Start Service.
echo "installing mongodb"
 yum install -y mongodb-org  </tmp/log
 sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
 
echo "starting mongodb" 
 systemctl enable mongod
systemctl restart mongod
#Update Liste IP address from 127.0.0.1 to 0.0.0.0 in config file
#Config file: /etc/mongod.conf



#Every Database needs the schema to be loaded for the application to work.
#Download the schema and load it.

echo "downloading schema"
curl -s -L -o /tmp/mongodb.zip "https://github.com/roboshop-devops-project/mongodb/archive/main.zip" </tmp/log

 cd /tmp
 echo "unzping schema archive "
 unzip mongodb.zip
 cd mongodb-main
 echo "loading schema"
 mongo < catalogue.js </tmp/log
 mongo < users.js   </tmp/log
