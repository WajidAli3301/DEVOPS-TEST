
<h3>  Devops Challange Solution <h3>

<h3>Task 1:-<h3>  I have created a script "script.sh" which will fetch logs as your requirment 
  
  
  

Task 2 & 3 & 4:- 
  
  

This terraform projects creates RDS databse with mysql 5.7 & EC2 instance with umami pre installed and configured using ansible as CD.

You need to Change database entries, regions and other variable in terraform.tfvars file And Database password in user.tfvars file.

Make sure you have configured aws CLI in your local machine & Ansible is installed in your local machine. playbook_test.yml is a ansible script for ubuntu 20.04 TLS.


  --------------------------------------------------------------------------------
 <h3> Security: </h3>
<p> EC2 will be launched in public subnet and RDS will be launched in private subnet </p>
<p> Only EC2 with defined security group can access RDS and RDS wont have internet access </p>


<----------------------------------------------------------------------------------------------------------------------->

<h2> Prerequisite </h2>
<p> Before launching Terraform template, aws cli should be installed and configured with proper access key and secret key </p>
<p> Terraform should be installed in your local machine </p>
<p> Ansible should be installed in youn local machine.
<p> Configure AWS CLI with <code> aws configure </code> if you havent configured already </p>

<------------------------------------------------------------------------------------------------------------------------>

<h2> STEPS: </h2>
 <p>Clone this repo using command <code>  git clone https://github.com/WajidAli3301/DEVOPS-TEST.git</code></p>
 <p> Go to project folder         <code>  cd DevOps-Challenge</code></p>
 <p>Initialize terraform          <code>  terraform init</code></p>
 <p>Change database and aws setting in terraform.tfvars file </p>
 <p>Generate Key pair using        <code> ssh-keygen -f mykey-pair  </code></p>
 <p>View Plan using                <code> terraform plan -var-file="user.tfvars"  </code></p>
 <p>Apply the plan using           <code> terraform apply -var-file="user.tfvars" </code></p>
 
 <p> After successfull provisioning of AWS Resources,Using remote-exec and private key, EC2 instance will be connected via  SSH. Yum will be updated and Python will be installed so that local ansible server can communicate with the provisoned EC2 . Once Installation is done ,Using local exec , Ansible playbook will be run against provisioned EC2 </p>
 <h3> everything is Automatic. This will provision all needed  aws resources and also build and start webserver using Ansible </h3>

 <p>Destroy the resources          <code> terraform destroy -var-file="user.tfvars" </code></p>





