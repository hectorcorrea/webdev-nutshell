FROM ruby:3.0
WORKDIR /root
EXPOSE 3000
# Keep container running https://devopscube.com/keep-docker-container-running/
ENTRYPOINT ["tail", "-f", "/dev/null"]