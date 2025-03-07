# docker-withsecure-node
Docker image for WithSecure EVM scanning node.

**Disclaimer:**
This Docker image is unofficial and not supported by WithSecure. Use  this project at your own risk. The maintainers are not responsible for any issues that may arise from using this setup. [Official installation here.](https://www.withsecure.com/userguides/product.html#business/radar/4.0/en/concept_9B2C05AAE1F34D358F21371C0FC2FEBD-4.0-en "Official installation here.")

## Prerequisites
- Machine running Ubuntu version 20.04.
- Docker & Docker Compose installed.
- WithSecure subscription to download:
    - withsecure-evm-scannodeagent-installer_1.1.0-13_amd64.deb
    - license.fsrl

## Getting started
- Coming soon
1. Clone the repo
   ```sh
   git clone https://github.com/bostrum/docker-withsecure-node.git
   ```

## Compatibility
Project is only  tested and proved functional with Ubuntu 20.04. Feel free to test other versions. Note: This setup does not work with Ubuntu 18.04 due to the GLIBC 2.27 version, which is incompatible with the required dependencies.
