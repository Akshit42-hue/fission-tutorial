# Step 3 - Setup Fission router environment variable 

```
export FISSION_ROUTER=$(kubernetes ip):$(kubectl -n fission get svc router -o jsonpath='{...nodePort}')
```{{execute}}

Now let's curl our function

```
curl http://${FISSION_ROUTER}/hello
```{{execute}}

