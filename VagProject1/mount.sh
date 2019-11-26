sudo su
pvcreate /dev/sdb /dev/sdc /dev/sdd /dev/sde
vgcreate vg00 /dev/sdb /dev/sdc /dev/sdd /dev/sde
lvcreate -n vol1 -L 600M vg00
lvcreate -n vol2 -l 100%FREE vg00
mkfs.ext4 /dev/vg00/vol1
mkfs.ext4 /dev/vg00/vol2
mkdir /mnt/vol1
mkdir /mnt/vol2
fsuid1=$(blkid -o value -s UUID /dev/vg00/vol1)
fsuid2=$(blkid -o value -s UUID /dev/vg00/vol2)
cd /etc
echo "UUID=$fsuid1 /mnt/vol1 ext4 defaults 0 0" >> fstab
echo "UUID=$fsuid2 /mnt/vol2 ext4 defaults 0 0" >> fstab
lsblk
su vagrant 


