# docker-cron-job
Minimum docker image implementing a cron job.

## Getting Started
Clone the repository:
```
git clone https://github.com/jan-brinkmann/docker-cron-job.git
```
Change into it:
```
cd docker-cron-job
```
Build the image:
```
docker build -t docker-cron-job .
```
Start a container:
```
docker run docker-cron-job
```
See
```
Hello World!
```
every minute.

## Customizing
Apply any cron schedule by setting `CRON_SCHEDULE`. For instance, if you want to run your job once day:
```
docker run -e CRON_SCHEDULE="0 * * * *" docker-cron-job
```