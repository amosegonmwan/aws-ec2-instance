sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start
echo "<h1>Welcome to Amos Website from $HOSTNAME</h1>" | sudo tee /var/www/html/index.html
sudo mkdir /var/www/html/app1
echo "<!DOCTYPE html> <html> <body style=\"background-color:rgb(250, 210, 210);\"> <h1>Welcome to Amos Website from $HOSTNAME!</h1> <p>Ec2 Demo</p> <p>Application Version: V1</p> </body></html>" | sudo tee /var/www/html/app1/index.html