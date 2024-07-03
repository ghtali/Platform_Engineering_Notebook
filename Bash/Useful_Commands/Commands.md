## Shows disk space usage in a human-readable format
df -h

## Displays the amount of free and used memory in the system in megabytes
free -m

## Outputs current CPU usage statistics
top

## Provides a snapshot of the current processes along with their CPU and memory usage
htop

## Shows the current uptime, load averages, and user sessions
uptime

## Displays the status of all network interfaces
ifconfig

## Shows detailed information about PCI buses and devices
lspci

## Lists USB devices connected to the system
lsusb

## Outputs kernel ring buffer messages, useful for diagnosing hardware issues
dmesg

## Displays detailed information about the system's CPU architecture
lscpu

## Shows detailed information about all block devices
lsblk

## Provides information about all mounted filesystems
mount

## Monitors system log messages in real-time
tail -f /var/log/syslog

## Lists open files and the processes that opened them
lsof

## Displays active network connections and open ports
netstat -tuln

## Monitors real-time network traffic
iftop

## Provides detailed information about network interfaces and IP addresses
ip a

## Shows the routing table used by the system
route

## Displays system information including kernel version and architecture
uname -a

## Shows the system's hostname and domain name
hostname

## Provides an overview of disk I/O activities
iostat

## Displays memory and swap usage information
vmstat

## Monitors disk I/O operations in real-time
iotop

## Outputs the status of all system services and units
systemctl list-units --type=service --state=running

## Displays current SELinux status and mode
sestatus

## Shows detailed information about system's battery and power supply
upower -i /org/freedesktop/UPower/devices/battery_BAT0

## Outputs detailed statistics about virtual memory
vmstat -s

## Monitors real-time virtual memory statistics
watch -n 1 cat /proc/meminfo

## Provides detailed information about the system's load averages
cat /proc/loadavg

## Displays currently logged in users and their activities
w

## Shows information about all system users
who

## Outputs detailed information about logged in users
whoami

## Lists all running processes
ps aux

## Displays detailed information about a specific process
ps -p <pid> -o pid,ppid,cmd,%mem,%cpu

## Provides detailed information about system's hardware
inxi -Fxz

## Shows detailed system and hardware information
hardinfo

## Monitors and displays temperature of various components
sensors

## Displays system's disk usage
du -sh /

## Shows CPU usage, memory usage, and other system statistics in real-time
glances

## Provides detailed system information including kernel, CPU, memory, and disk
screenfetch

## Displays real-time system resource usage
bmon

