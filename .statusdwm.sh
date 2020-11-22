#!/bin/bash


#Variabel 
JEDA=30 #detik

#Fungsi
smem()
{
    free -mh | awk '/Mem/{print $3 }'
}

waktu()
{
    date "+D: %A %d %b | T: %H:%M"
}

suara()
{
    amixer scontents | awk '/Left\:\ Play/{print $5 $6}'
}

pong()
{
    ping 8.8.8.8 -c 1 | awk '/64/{print $7 $8}' | sed 's/time/ping/' 
}    

#Mainloop
while true; do
    xsetroot -name "$(waktu) | V: $(suara) | I: $(pong) | M: $(smem)"
    sleep $JEDA
done 
