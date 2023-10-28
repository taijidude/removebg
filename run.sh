docker build -t "rembg:latest" .

docker run -it \
--mount type=bind,source="$(pwd)/$1",target="/$1" \
--mount type=bind,source="$(pwd)/out/",target="/out" \
"rembg:latest" bash
