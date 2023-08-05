#!/bin/sh

end=50

i=1; while [ $i -le $end ]; do
  echo $i
  i=$(($i + 1))
  sleep 5
done
