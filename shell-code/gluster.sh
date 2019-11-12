sudo mkdir -p /opt/gluster/mongodb-3
sudo /usr/local/glusterfs/sbin/gluster volume create mongodb-3 replica 2 master:/opt/gluster/mongodb-3 node1:/opt/gluster/mongodb-3 force
sudo /usr/local/glusterfs/sbin/gluster volume start mongodb-3
sudo /usr/local/glusterfs/sbin/gluster volume quota mongodb-3 enable 
sudo /usr/local/glusterfs/sbin/gluster volume quota mongodb-3 limit-usage / 5GB
sudo /usr/local/glusterfs/sbin/gluster volume set mongodb-3 performance.cache-size 128MB
sudo /usr/local/glusterfs/sbin/gluster volume set mongodb-3 performance.flush-behind on
sudo /usr/local/glusterfs/sbin/gluster volume set mongodb-3 performance.io-thread-count 32
sudo /usr/local/glusterfs/sbin/gluster volume set mongodb-3 performance.write-behind on
