### Connect to Cluster in local network
Create a ssh tunnel:
```shell
ssh <user>@<address> -N -L <local-port>:<host-address>:<host-port> -o IdentitiesOnly=yes
```
Log into remote server and copy the `~/.kube/config` settings to the local `~/.kube/config`.
