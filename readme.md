# Installing MCM App in IBM Cloud Pak for Multicloud Management Version 1.3.0 

## Installation Steps

1. Download this project from git

2. Change the below values according to your cluster in the file `/src/gcart-subscription/21-placement.yaml` 

```
  clusterLabels:
    matchExpressions:
      - key: cloud
        operator: In
        values:
        - IBM
```

3. Goto `install` folder in command prompt

4. Set kubetcl context in commmand prompt that points to your mcm hub.

5. Run the below command.

```
sh 01-install.sh
```

## Accessing the installed application

The application get installed in the mcm hub.

1. Login into the managed cluster with ` oc login`  command

2. Run the below command to find the routes installed.

```
oc get route -n gstore-namespace-app-ns
```

It may result like the below.
```
NAME             HOST/PORT                                                                                                                 PATH   SERVICES         PORT      TERMINATION   WILDCARD
gstore-namespace-web   gstore-namespace-web-gstore-namespace-app-ns.gsi-labs-mcm-m1-7ec5d722a0ab3f463fdc9ppdomain.cloud   /      gstore-namespace-web   my-http                 None
```

3. Copy the route from the above output and open the url in the browser.

ex:
```
http://gstore-namespace-web-gstore-namespace-app-ns.gsi-labs-mcm-m1-7ec5d722a0ab3f463fdc9ppdomain.cloud
```
