# nodejs-application

steps to authenticate ec2 instance using ssh.

In secrets, configure EC2_HOST(give the public ipv4 or public dns)

configure EC2_USERNAME(give the default name(ec2-user) )

configure EC2_SSH_PRIVATE_KEY (by following the below steps)

connect to ec2 cli and then run the below steps.  

Pwd   

check the user- ec2-user  



ls -la (make sure the .ssh is there)  

ssh-keygen (for generating the public and private keys) (id_rsa, id_rsa.pub)  

cd .ssh  


Copy the private key (id_rsa) to github secrets.  

cat id_rsa   

Add public key to the authorized keys.  

In .ssh , do ls -la , and check the whether authorized_keys, id_rsa, id_rsa.pub are there.  

Now append the public key to authorized keys, using the below command  

cat id_rsa.pub >> authorized_keys   

Now run the workflow.  

command for build and run the docker image 

docker build -t <image_name> .

docker run -p 3001:3001 -it <image_name or image_id>

to get the list of running containers


docker ps -la 

to get the list of created images

docker images

Access the shopping cart website 

http://ec2-52-23-180-219.compute-1.amazonaws.com:3001/buckets