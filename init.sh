# 替换为清华的源

sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main@' $PREFIX/etc/apt/sources.list
export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib
pkg up -y

# ssh 登录

pkg install openssh -y
sshd
mkdir -p ~/.ssh
chmod 700 .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDSHqMj9AqPvmtMgMcrspAWD0m1RR7DnINPGiI6ks8eJS391gBwY9Tn0yFdCPvsX98Oo/jI5U6iy7MlYXR5U7JOvd0v/3QXBEP6iyqi+r5niJSFEh27VG2xHEwujthBFTP1/UhxtinA3Mpt6+EeevUWalyXwtdGwBONbM+nMRAqA0OUp4CfFR4+BuBxPKGGSOFkRrlqWABhsg92AwmlQ60XQRMiG46zCPg198zy2+OJB29K50PmhlML+BDc1wAOJKkWAQdWcYKeyCwKsDzr83Pm63W0UMEn4bwP47bf+i/XZ/9Aw2EGmpBtJ6XEarni7f1lm6a0SETeTrcqf0XitSoz" >  ~/.ssh/authorized_keys

