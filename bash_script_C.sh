#!/bin/bash
for i in 00-vpc 10-sg 20-bastion 30-rds 40-eks 50-acm 60-alb 70-ecr 80-cdn 
do cd $i 
  terraform init
  terraform apply --auto-approve 
  echo "$i, has been created" 
  cd ..
done