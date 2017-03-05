# MAC address bulk format

## Description
A ruby website which accepts MAC addresses (one per line) in any format and converts to all usual formats. The website is hosted at http://mactools.bachert.it/.

## Configuration
- Supply all environment variables referenced in docker-compose.yml

## Deployment
- clone repository
- docker-compose build
- docker-compose up

## Run Tests
- docker-compose run web rails test
