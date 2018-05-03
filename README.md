## Info

This a Docker image [publicly available at Docker Hub](https://hub.docker.com/r/lage/descarteslabs/) to use **[DescartesLabs](https://descarteslabs.com)** platform. This image comes `FROM jupyter/datascience-notebook`. 

The goal is to:

1. easily run DescartesLabs examples;
2. support the development of more complex applications by using DescartesLabs;
3. serves as a reference for reproducible research prototypes which use DescartesLabs.

## Usage 

Execute the following command:

```bash
docker run -it --rm -p 8888:8888 lage/descarteslabs:0.2
```

Then copy the http link it provides and paste at your browser.

If you need to access the container to install further packages, etc., run it as root:

```bash
docker run -u root -it --rm -p 8888:8888 lage/descarteslabs:0.2
```

# DescartesLabs issues when following [the Getting Started tutorial](https://docs.descarteslabs.com/docs/tutorials/getting_started.html)

At line `bbox = shape['bbox']`, reinstall numpy:

```bash
pip unistall numpy
pip istall numpy
```


If you get the `print` error syntax, use parentheses, e.g.:

```python
print(len(feature_collection['features']))
```
