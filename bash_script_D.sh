#!/bin/bash
for i in 80-cdn 70-ecr 60-alb 50-acm 40-eks 30-rds 20-bastion 10-sg 00-vpc
do cd $i 
  terraform destroy --auto-approve 
  echo "$i, has been destroyed" 
  cd ..
done