# How to build

Step 1: generate configuration file

```shell
cmake -S . -B build
```

Step 2: build

```shell
cmake --build build
```

# Advanced Options

If you want to debug into it: 

```shell
cmake --build build -DDEBUG=1
```

If you want to build faster

```shell
cmake --build build -j
```
