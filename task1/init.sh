sudo apt-get install default-jdk -y
sudo apt-get install git -y
sudo apt-get install maven -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins -y
curl -o http://localhost:8080/jnlpJars/jenkins-cli.jar
sudo java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin git  --username
 admin --password @/var/lib/jenkins/secrets/initialAdminPassword
sudo java -jar jenkins-cli.jar -s http://localhost:8080 install-plugin maven-plugin  --username
 admin --password @/var/lib/jenkins/secrets/initialAdminPassword
 sudo service jenkins restart
sudo java -jar jenkins-cli.jar -s http://localhost:8080 create-job spring-pet-clinic --username
 admin --password @/var/lib/jenkins/secrets/initialAdminPassword < job-config.xml