#!/bin/bash


#Variabel 
JEDA=15 #detik

#Fungsi
cpur() {
read cpu a b c d e f g abai < /proc/stat

sleep 0.5

read cpu2 a2 b2 c2 d2 e2 f2 g2 abai < /proc/stat

prevtotal=$((a+b+c+e+f+g))
total=$((a2+b2+c2+e2+f2+g2))
cpu=$((total-prevtotal ))
#cpu=$(( 2 * cpu   ))
echo "CPU: $cpu %"
}

smem()
{
    free -mh | awk '/Mem/{print $3 }'
}

waktu()
{
    date "+D: %A %d %b --- T: %H:%M"
}

suara()
{
    amixer scontents | awk '/Left\:\ Play/{print $5 $6}'
}

pong()
{
    ping 8.8.8.8 -c 1 | awk '/64/{print $7 $8}' | sed 's/time/ping/' 
}    

statok()
{
	echo "$(waktu) ---  V: $(suara) --- I: $(pong) --- M: $(smem) --- $(cpur)"
}

statvol()
{
	echo "-----!!! LOUD VOL !!!-----| $(statok)" 
}


#Mainloop
while :; do
	echo $(suara) > semvol #volume saat ini di cek file ./CEKVOL, u/ deteksi 85% ke atas
	grep -f ~/cekvol semvol  && statvol || statok 
    	sleep $JEDA
done 
