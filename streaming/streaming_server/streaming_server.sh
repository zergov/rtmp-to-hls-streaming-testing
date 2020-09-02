docker build -t streaming_server .
docker run --rm -p 1935:1935 streaming_server
