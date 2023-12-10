FROM ruby:3.0
WORKDIR /usr/src/app
# CMD ["./your-daemon-or-script.rb"]
# ENV PORT 3000
EXPOSE 3000
ENTRYPOINT [ "/bin/bash" ]