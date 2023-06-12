for componented in fronted mongodb catalogue redis user cart mysql shipping rabbitmq payment dispatch ; do
  echo creating server - $component
  aws ec2 run-instances  --image-id  ami-03265a0778a880afb  --instance-type t3.small
done