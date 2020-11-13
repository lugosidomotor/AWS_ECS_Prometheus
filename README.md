# AWS_ECS_Prometheus

✔️ https://github.com/teralytics/prometheus-ecs-discovery

❌ https://github.com/signal-ai/prometheus-ecs-sd/blob/master/README.md


sudo docker run --name ecs_sd -d -e AWS_REGION=us-east-1 tkgregory/prometheus-ecs-discovery

sudo docker exec ecs_sd /bin/sh -c "cat ecs_file_sd.yml" > file_sd_config.yml
