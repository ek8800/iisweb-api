docker build -t eddyko00/ek-api .
docker image ls
docker run -p 8080:8080 -t eddyko00/ek-api
docker push eddyko00/ek-api
