a=10
while [ $a -gt 0  ];do
  echo Hello world
  a=$(($a-1))
  sleep 1
done

for component in catalogue user cart fronted shipping payment ; do
  echo creating component - $component
  sleep 1
done