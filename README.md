# docker-withsecure-node
Docker image for WithSecure EVM scanning node.

**Disclaimer:**
This Docker image is unofficial and not supported by WithSecure. Use  this project at your own risk. The maintainers are not responsible for any issues that may arise from using this setup. [Official installation here.](https://www.withsecure.com/userguides/product.html#business/radar/4.0/en/concept_9B2C05AAE1F34D358F21371C0FC2FEBD-4.0-en "Official installation here.")

## Prerequisites
- Docker & Docker Compose installed.
- WithSecure subscription to download license.fsrl

## Getting started
1. Clone the repo.
2. Download license using your WithSecure login. [Official instruction](https://www.withsecure.com/userguides/product.html#business/radar/4.0/en/task_CE3186C99BF84BA289D58BA8A883DC40-4.0-en "Official instruction"), follow step 1 but skip the part about downloading the scan node installation package.
4. Move license.fsrl to the subfolder build.
5. Build image and start container using 'docker-compose up -d --build'.

## Compatibility
Project is only  tested and proved functional with the Ubuntu 20.04 image. Feel free to test other versions. Note: This setup does not work with Ubuntu 18.04 due to the GLIBC 2.27 version, which is incompatible with the required dependencies.
