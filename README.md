# yt-dlp-image

Simple project to build an image for yt-dlp

Example usage

```
docker run --rm -u $(id -u):$(id -g) -v $(PWD)/test:/workdir:rw phyzical/yt-dlp \
 [YT_DLP COMMANDS]
```
