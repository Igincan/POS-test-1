mkdir $USER-owned
find /home -user $USER -type f -exec cp {} $USER-owned \;
