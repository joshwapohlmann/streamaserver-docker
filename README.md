# Streama Docker
A docker image for simply running streamaserver (https://github.com/streamaserver/streama) 

## Usage
1. Clone repository
2. Build the image with `$ docker build -t streamaserver`
3. Run the image with `$ docker run streamaserver`. 
4. Access streama at http://localhost:8080 (or whatever your servers IP is).

NOTE: If you wish to make your instance externally evailable, consider using a [reverse proxy](https://github.com/jwilder/nginx-proxy) and deploy the service with **docker stack** or **docker compose**.

## Persistent database
If you want your database to be persistent. Attach a volume at `/db`.

## Future enhancements
Open an issue if you have questions or wish for more features, since I will not put more effort into this repository without any demand. 
