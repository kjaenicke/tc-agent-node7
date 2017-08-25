FROM devsu/teamcity-agent:base
MAINTAINER Keenan Jaenicke <keenan@120wateraudit.com>

# Install nodejs 7, with build tools
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

# Install yarn package manager
RUN npm install -g yarn
