#!/bin/bash
read s
strlen=${#s}
for (( i=$strlen-1; i>=0; i-- ));
do
    revstr=$revstr${s:$i:1}
done
echo "Reversed String : $revstr"
y=$(echo "$revstr" | tr "0-9a-zA-Z" "1-9a-zA-Z_")
echo $y
let z=$strlen/2
for (( i=$z-1; i>=0; i-- ));
do
    str=$str${s:$i:1}
done

for (( i=$z; i<$strlen; i++ ));
do
    str=$str${s:$i:1}
done
echo $str
