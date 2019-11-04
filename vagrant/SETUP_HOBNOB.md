# Development Environment Setup for hobnob project

## Install Java JDK

```bash
# Install JDK
sudo apt update
sudo apt install default-jdk

# Configure default JDK if necessary
sudo update-alternatives --config java
```

## Add Environment variable in `/etc/environment`

- Change jvm path if necessary
- Set `$JAVA_HOME` environment variable

```bash
# vi /etc/environment
JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
```

## Install ElasticSearch

- Check out ElasticSearch website for the latest installation process

```bash
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install elasticsearch
```

## Start ElasticSearch

```bash
sudo systemctl start elasticsearch.service

# To stop elasticsearch
# sudo systemctl stop elasticsearch.service

# To simplify development, we can make Elasticsearch start whenever the system is rebooted by enabling it:
sudo systemctl daemon-reload
sudo systemctl enable elasticsearch.service

# Now, we can check that Elasticsearch is running using systemctl: $ sudo systemctl start elasticsearch.service
sudo systemctl status elasticsearch.service
```
