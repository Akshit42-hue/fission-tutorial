# Step 2 - Let's create an environment

```
fission env create --name node --image fission/node-env
```{{execute}}

Now let's create a function in NodeJS
Copy and paste the below code in hello.js file

```
module.exports = async function(context) {
    return {
        status: 200,
        body: "Hello, world!\n"
    };
}
```{{copy}}

Now let's create this function on our cluster

```
fission fn create --name hello --code hello.js --env node
```{{execute}}

Let’s create a route for the function

```
fission route create --function hello --url /hello --name hello
```{{execute}}