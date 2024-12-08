#!/bin/bash
arch=$(uname -a)
pproc=$(grep -c "^physical id" /proc/cpuinfo)
vproc=$(grep -c "^processor" /proc/cpuinfo)
musage=$(free -m | awk 'NR==2{printf "%d/%dMB (%.2f%%)\n", $3, $2, $3*100/$2}')
dusage=$(df -h --total | awk '/total/ {printf "%s/%s (%s)\n", $3, $2, $5}')
cload=$(mpstat 1 1 | grep -A 5 "%idle" | tail -n 1 | awk -F " " '{print 100 -  $ 12}')
lboot=$(who -b | awk '{print $3, $4}')
lvm=$(if lsblk | grep "lvm" > /dev/null ; then echo "yes"; else echo "no"; fi)
con=$(netstat -an | grep -c 'ESTABLISHED')
users=$(users | wc -w)
ip=$(hostname -I)
mac=$(ip link | grep "ether" | awk '{print $2}')
cmd=$(journalctl -q _COMM=sudo | grep COMMAND | wc -l)
wall "	#Architecture : $arch
        #CPU physical : $pproc
        #vCPU : $vproc
        #Memory Usage: $musage
        #Disk Usage: $dusage
	#CPU load: $cload%
        #Last boot: $lboot
        #LVM use: $lvm
        #Connections TCP : $con ESTABLISHED
        #User log: $users
	#Network: IP $ip($mac)
        #Sudo : $cmd cmd"
