# Cardinality Cube 
Fast and Accurate Approximate Cardinality Estimator Data Structure and Server


# Possible Usages
Thanks to modular design of CC ecosystem you can either;
- Use the cube as a data structure in your code 
- Embed the server in your code 
- Use the full blown server as standalone

# Simple usage

```
docker run -d -p 1994:1994 --name ccubeserver ibrahimercan/cardinalitycube cubeserver start
```

or with docker-compose [file](https://raw.githubusercontent.com/ibotheperfect/docker-cardinalitycube/master/docker-compose.yml)

```
docker-compose up -d 
```

Run client as

```
docker run -it --name ccubeclient ibrahimercan/cardinalitycube cubecli
```
