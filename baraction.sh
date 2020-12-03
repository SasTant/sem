#!/bin/bash


#Variabel 
JEDA=15 #detik

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

#cpu()
#{
#	read cpu a b c previdle rest < /proc/stat
#	prevtotal=$((a+b+c+previdle))
#	sleep 0.5
#	read cpu a b c idle rest < /proc/stat
#	total=$((a+b+c+idle))
#	cpu=$((100 * (total-prevtotal) - (idle-previdle) / (total-prevtotal) ))
#	echo "CPU: $cpu"
#}

statok()
{
	echo "$(waktu) | V: $(suara) | I: $(pong) | M: $(smem)"
}

statvol()
{
	echo "----------!!! LOUD VOL !!!-----------|$(waktu) | $(suara) | I: $(pong) | M: $(smem)" 
}


#Mainloop
while :; do
	echo $(suara) > semvol #volume saat ini di cek file ./CEKVOL, u/ deteksi 85% ke atas
	grep -f ~/cekvol semvol  && statvol || statok 
    	sleep $JEDA
done 
