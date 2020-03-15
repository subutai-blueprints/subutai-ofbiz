## Subutai Blueprint installs MariaDB Galera cluster and Apache OFBiz cluster 

**Post-build steps:**
Add port mapping to all containers: external port is https **443** and internal port is **18843**, **ssl_backend** should be enabled,  provide **custom SSL certificate** in format with one file: 
```
-----BEGIN CERTIFICATE-----
...
-----END CERTIFICATE-----

-----BEGIN PRIVATE KEY-----
...
-----END PRIVATE KEY-----
```

After get USED state go to **https://YOUR_DOMAIN/projectmgr/control/main**

**login: admin**

**password: ofbiz**
